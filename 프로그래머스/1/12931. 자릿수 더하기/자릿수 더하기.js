function solution(n)
{
const M = n.toString();
const answer = M.split("").reduce((arr, value) => arr + Number(value), 0);

    return answer;
}