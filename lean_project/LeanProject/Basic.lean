def hello := "world"

theorem one_plus_one_is_two : 1 + 1 = 2 := rfl

theorem add_comm (a b : Nat) : a + b = b + a := by
  induction a with
  | zero => rw [Nat.zero_add, Nat.add_zero]
  | succ a' ih => rw [Nat.succ_add, Nat.add_succ, ih]
