/*Siming's C++14 Template For CP*/
#include <bits/stdc++.h>
using namespace std;
/*Debug*/
/*vector*/ template<typename T> ostream &operator<<(ostream &os, const vector<T> &v){os<<"{";for(int i=0;i<v.size();++i){os<<v[i];if(i!=v.size()-1)os<<", ";}os<<"}";return os;}
/*set*/ template<typename T> ostream &operator<<(ostream &os, const set<T> &s){os<<"{";for(auto &it:s){os<<it;if(it!=*s.rbegin())os<<", ";}os<<"}";return os;}
/*list*/ template<typename T> ostream &operator<<(ostream &os, const list<T> &l){os<<"{";for(auto &it:l){os<<it;if(it!=*l.rbegin())os<<", ";}os<<"}";return os;}
/*pair*/ template<typename T, typename S> ostream &operator<<(ostream &os, const pair<T, S> &p){os<<"(";os<<p.first<<", "<<p.second<<")";return os;}
/*map*/ template<typename T, typename S> ostream &operator<<(ostream &os, const map<T, S> &m){cout<<"{";for(auto &it:m){os<<it;}os<<"}";return os;}
/*umap*/ template<typename T, typename S> ostream &operator<<(ostream &os, const unordered_map<T, S> &m){cout<<"{";for(auto &it:m){os<<it;}os<<"}";return os;}
#define debug(x) cout<<"DEBUG: "<<(#x)<<" = "<<(x)<<"\n";
/*IO*/
/*vector*/ template<typename T> istream &operator>>(istream &is, vector<T> &v){for(auto &i:v){is>>i;}return is;}
#define fastio ios::sync_with_stdio(false); cin.tie(0); cout.tie(0);
#define setd(n) cout.precision(n);cout<<fixed;
#define endl "\n"
/*Acronyms*/
#define int long long int
#define str string
#define vc vector
#define vi vc<int>
#define vvi vc<vi>
#define pb push_back
#define umap unordered_map
#define mp make_pair
#define fi first
#define se second
const int INF = 2e18;
/*Util*/
#define asc(i,s,e) for(int i=(s);i<=(e);++i)
#define dsc(i,s,e) for(int i=(s);i>=(e);--i)
#define sz(x) ((int)(x).size())
#define all(x) begin(x), end(x)
#define rall(x) rbegin(x), rend(x)
#define gcd(a,b) __gcd(a,b)
#define lcm(a,b) ((a)/__gcd(a,b)*(b))
#define cdiv(a,b) ((a==0)?0:((a)-1)/(b)+1)
/*Testing*/
#define test solve();
#define tests int t;cin>>t;for(;t!=0;--t){solve();cout<<"\n";}

/*Code Begins Here*/

void solve() {
   str s,t; cin>>s>>t;
   int sl=s.length();
   int tl=t.length();
   vc<vc<pair<int,str>>> dp(sl+1,vc<pair<int,str>>(tl+1));
   asc(i,1,sl){
      asc(j,1,tl){
         if(s[i-1]==t[j-1]){
            dp[i][j].fi=1+dp[i-1][j-1].fi;
            dp[i][j].se=dp[i-1][j-1].se + s[i-1];
         } else{
            int case1 = dp[i-1][j].fi;
            int case2 = dp[i][j-1].fi;
            if(case1>=case2){
               dp[i][j]=dp[i-1][j];
            } else{
               dp[i][j]=dp[i][j-1];
            }
         }
      }
   }
   cout<<dp[sl][tl].se<<endl;
}

signed main() {
   fastio;
   test;
   return 0;
}