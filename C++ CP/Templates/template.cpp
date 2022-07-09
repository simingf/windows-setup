/*Siming's C++14 Template For Competitive Programming*/
#include <bits/stdc++.h>
using namespace std;
/*Debug   */
/*vector  */ template <typename T> ostream& operator<<(ostream& os, const vector<T>& v){os<<"{";for(int i=0;i<v.size();++i){os<<v[i];if(i!=v.size()-1)os<<", ";}os<<"}";return os;}
/*set     */ template <typename T> ostream& operator<<(ostream& os, const set<T>& s){os<<"{";for(auto it:s){os<<it;if(it!=*s.rbegin())os<<", ";}os<<"}";return os;}
/*list    */ template <typename T> ostream& operator<<(ostream& os, const list<T>& l){os<<"{";for(auto it:l){os<<it;if(it!=*l.rbegin())os<<", ";}os<<"}";return os;}
/*map     */ template <typename T, typename S> ostream& operator<<(ostream& os, const map<T, S>& m){cout<<"\n";for(auto it:m){os<<it.first<<" : "<<it.second<<"\n";}return os;}
/*hashmap */ template <typename T, typename S> ostream& operator<<(ostream& os, const unordered_map<T, S>& m){cout<<"\n";for(auto it:m){os<<it.first<<" : "<<it.second<<"\n";}return os;}
/*pair    */ template <typename T, typename S> ostream& operator<<(ostream& os, const pair<T, S>& p){os<<"(";os<<p.first<<", "<<p.second<<")";return os;}
#define debug(x) cout<<"DEBUG: "<<(#x)<<" is "<<(x)<<"\n";
#define flag cout<<"FLAG\n";
/*Acronyms*/
#define ll long long int
#define vc vector
#define pb push_back
#define umap unordered_map
#define mp make_pair
#define ff first
#define ss second
/*Util*/
#define sz(x) (int)((x).size())
#define all(x) begin(x), end(x)
#define rall(x) rbegin(x), rend(x)
#define gcd(a,b) __gcd(a,b)
#define lcm(a,b) ((a)/__gcd(a,b)*(b))
#define cdiv(a,b) ((a==0)?0:((a)-1)/(b)+1)
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

int main() {
   fastio;
   test;
   return 0;
}