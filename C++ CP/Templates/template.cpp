/*Siming's C++14 Template For CP*/
#include <bits/stdc++.h>
using namespace std;
/*Data Struct IO*/
/*vector in*/ template<typename T> istream &operator>>(istream &is, vector<T> &v){for(auto &i:v){is>>i;}return is;}
/*vector out*/ template<typename T> ostream &operator<<(ostream &os, const vector<T> &v){os<<"(vector) {";for(auto &it:v){os<<it;if(it!=*v.rbegin())os<<", ";}os<<"}";return os;}
/*set out*/ template<typename T> ostream &operator<<(ostream &os, const set<T> &s){os<<"(set) {";for(auto &it:s){os<<it;if(it!=*s.rbegin())os<<", ";}os<<"}";return os;}
/*list out*/ template<typename T> ostream &operator<<(ostream &os, const list<T> &l){os<<"(list) {";for(auto &it:l){os<<it;if(it!=*l.rbegin())os<<", ";}os<<"}";return os;}
/*pair out*/ template<typename T, typename S> ostream &operator<<(ostream &os, const pair<T, S> &p){os<<"(";os<<p.first<<", "<<p.second<<")";return os;}
/*map out*/ template<typename T, typename S> ostream &operator<<(ostream &os, const map<T, S> &m){cout<<"(map) {";for(auto &it:m){os<<it;}os<<"}";return os;}
/*umap out*/ template<typename T, typename S> ostream &operator<<(ostream &os, const unordered_map<T, S> &m){cout<<"(umap) {";for(auto &it:m){os<<it;}os<<"}";return os;}
/*Acronyms*/
#define int long long int
#define vc vector
#define pb push_back
#define umap unordered_map
#define mp make_pair
#define fi first
#define se second
#define INF 2e18
/*Util*/
#define rep(i,s,e) for(int i=(s);i<=(e);++i)
#define per(i,s,e) for(int i=(s);i>=(e);--i)
#define each(i,x) for(auto &i:x)
#define sz(x) ((int)(x).size())
#define all(x) begin(x), end(x)
#define rall(x) rbegin(x), rend(x)
#define gcd(a,b) __gcd(a,b)
#define lcm(a,b) ((a)/__gcd(a,b)*(b))
#define cdiv(a,b) ((a==0)?0:((a)-1)/(b)+1)
/*Debug*/
#define debug(x) cout<<"DEBUG: "<<(#x)<<" = "<<(x)<<"\n";
#define flag cout<<"FLAG\n";
/*IO*/
#define fastio ios_base::sync_with_stdio(0);cin.tie(0);cout.tie(0);
#define setd(n) cout.precision(n);cout<<fixed;
#define endl "\n"
/*Testing*/
#define test solve();
#define tests int t;cin>>t;for(;t!=0;--t){solve();cout<<"\n";}

/*CODE BEGINS HERE*/

void solve() {
   
}

signed main() {
   fastio;
   test;
   return 0;
}