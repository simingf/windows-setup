/*Siming's C++14 Template For CP*/
#include <bits/stdc++.h>
using namespace std;
/*Debug*/
/*vector*/ template<typename T> ostream &operator<<(ostream &os, const vector<T> &v){os<<"(vector) {";for(auto &it:v){os<<it;if(it!=*v.rbegin())os<<", ";}os<<"}";return os;}
/*set*/ template<typename T> ostream &operator<<(ostream &os, const set<T> &s){os<<"(set) {";for(auto &it:s){os<<it;if(it!=*s.rbegin())os<<", ";}os<<"}";return os;}
/*list*/ template<typename T> ostream &operator<<(ostream &os, const list<T> &l){os<<"(list) {";for(auto &it:l){os<<it;if(it!=*l.rbegin())os<<", ";}os<<"}";return os;}
/*pair*/ template<typename T, typename S> ostream &operator<<(ostream &os, const pair<T, S> &p){os<<"(";os<<p.first<<", "<<p.second<<")";return os;}
/*map*/ template<typename T, typename S> ostream &operator<<(ostream &os, const map<T, S> &m){cout<<"(map) {";for(auto &it:m){os<<it;}os<<"}";return os;}
/*umap*/ template<typename T, typename S> ostream &operator<<(ostream &os, const unordered_map<T, S> &m){cout<<"(umap) {";for(auto &it:m){os<<it;}os<<"}";return os;}
#define debug(x) cout<<"DEBUG: "<<(#x)<<" = "<<(x)<<"\n";
/*IO*/
/*vector*/ template<typename T> istream &operator>>(istream &is, vector<T> &v){for(auto &i:v){is>>i;}return is;}
#define fastio ios::sync_with_stdio(false); cin.tie(0);
#define setd(n) cout.precision(n);cout<<fixed;
#define endl "\n"
/*Acronyms*/
#define int long long int
#define str string
#define vc vector
#define pb push_back
#define umap unordered_map
#define mp make_pair
#define fi first
#define se second
const int INF = 1e9;
/*Util*/
#define rep(i,s,e) for(int i=(s);i<=(e);++i)
#define per(i,s,e) for(int i=(s);i>=(e);--i)
#define sz(x) ((int)(x).size())
#define all(x) begin(x), end(x)
#define rall(x) rbegin(x), rend(x)
#define gcd(a,b) __gcd(a,b)
#define lcm(a,b) ((a)/__gcd(a,b)*(b))
#define cdiv(a,b) ((a==0)?0:((a)-1)/(b)+1)
/*Testing*/
#define test solve();
#define tests int t;cin>>t;for(;t!=0;--t){solve();cout<<"\n";}

/*CODE BEGINS HERE*/

void solve() {
   int n,w; cin>>n>>w;
   vc<pair<int,int>> v(n);
   rep(i,0,n-1) cin>>v[i].fi>>v[i].se;
   vc<vc<int>> dp(w+1,vc<int>(n+1));
   rep(i,0,n) dp[0][i]=0;
   rep(i,0,w) dp[i][0]=0;
   rep(i,1,w) {
      rep(j,1,n) {
         int weight = v[j-1].fi;
         int val = v[j-1].se;
         if(weight <= i) {
            dp[i][j] = max(dp[i][j-1], dp[i-weight][j-1]+val);
         } else {
            dp[i][j] = dp[i][j-1];
         }
      }
   }
   cout << dp[w][n];
}

signed main() {
   fastio;
   test;
   return 0;
}