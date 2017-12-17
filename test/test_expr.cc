/// \file
/// Unit test for the class Expr.

#include "ila/ast/expr.h"
#include "ila/ast/expr_var.h"
#include "gtest/gtest.h"

namespace ila {

TEST(ExprVar, Construct) {
  // ExprPtr var_null = std::make_shared<ExprVar>();
  ExprPtr var_bool = std::make_shared<ExprVar>("var_bool");
  ExprPtr var_bv_0 = std::make_shared<ExprVar>("var_bv_0", 8);
  ExprPtr var_bv_1 = std::make_shared<ExprVar>("var_bv_1", 8);
  ExprPtr var_mem = std::make_shared<ExprVar>("var_mem", 8, 8);

  EXPECT_TRUE(var_bool->IsVar());
  EXPECT_TRUE(var_bv_0->IsVar());
  EXPECT_TRUE(var_bv_1->IsVar());
  EXPECT_TRUE(var_mem->IsVar());
}

} // namespace ila

