fn two_sum(nums []int, target int) []int {
	mut result := []int{len: 2, cap: 2}
    mut m := map[int]int{} 
	for i, num in nums{
		m[num] = i
	}
	
	for i, num in nums{
		diff := target - num
		if diff in m && m[diff] != i{
			result =  [m[diff], i]
		}
	}
	return result
}