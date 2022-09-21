/*Siming's C++14 Template*/
#include <bits/stdc++.h>
using namespace std;
/*Debug   */
/*list    */ template <typename T> ostream& operator<<(ostream& os, const list<T>& l){os<<"{";for(auto it:l){os<<it;if(it!=*l.rbegin())os << ", ";}os<<"}";return os;}
/*set     */ template <typename T> ostream& operator<<(ostream& os, const set<T>& s){os<<"{";for(auto it:s){os<<it;if(it!=*s.rbegin())os << ", ";}os<<"}";return os;}
/*vector  */ template <typename T> ostream& operator<<(ostream& os, const vector<T>& v){os<<"{";for(int i=0;i<v.size();++i){os<<v[i];if(i!=v.size()-1)os<<", ";}os<<"}";return os;}
/*map     */ template <typename T, typename S> ostream& operator<<(ostream& os, const map<T, S>& m){cout<<"\n";for(auto it:m){os<<it.first<<" : "<<it.second<<"\n";}return os;}
/*hashmap */ template <typename T, typename S> ostream& operator<<(ostream& os, const unordered_map<T, S>& m){cout<<"\n";for(auto it:m){os<<it.first<<" : "<<it.second<<"\n";}return os;}
/*pair    */ template <typename T, typename S> ostream& operator<<(ostream& os, const pair<T, S>& p){os << "(";os<<p.first<<", "<<p.second<<")";return os;}
/*array   */ template <class InputIterator> void printarray(InputIterator start,InputIterator end){cout<<"{";for(auto itr=start;itr!=end;++itr){cout<<*itr;if(itr!=end-1){cout<<", ";}}cout<<"}";}
#define debug(x) cout << "DEBUG: " << (#x) << " is " << (x) << '\n';
#define debugarr(arr, n) cout << "DEBUG: " << (#arr) << " is "; printarray(arr, arr+n); cout << '\n';
#define flag cout<<"FLAG\n";
/*Acronyms*/
#define uint unsigned int
#define ll long long
#define ull unsigned long long
#define vc vector
#define pb push_back
#define umap unordered_map
/*Util*/
#define sz(a) ((int)((a).size()))
#define all(v) begin(v), end(v)
#define rall(v) rbegin(v), rend(v)
#define __lcm(a,b) ((a)/__gcd(a,b)*(b))
#define cdiv(a,b) ((a<=0)?((a)/(b)):(1 + ((a)-1)/(b)))
/*IO*/
#define endl "\n"
#define setd(n) cout.precision(n);cout<<fixed;
#define read(arr, n) for(int i=0;i<n;++i){cin>>arr[i];} 
#define yesno(cond) cout<<((cond)?"YES":"NO");
/*TEST CASES*/
#define test solve();
#define tests int t;cin>>t;for(;t!=0;--t){solve();cout<<"\n";}
/*------------------------------------------------------------------------------------------------*/

void solve() {
   //if the meeting point is between the leftmost and rightmost,
   //the total distance travelled by leftmost and rightmost is constant
   //regardless of the position of the meeting point.
   //hence meeting at the middle person minimizes distance travelled.
   int a,b,c; cin >> a >> b >> c;
   int mx = max(a,max(b,c));
   int mn = min(a,min(b,c));
   cout << mx - mn;
}

int main() {
   ios::sync_with_stdio(false); cin.tie(0); cout.tie(0);
   test;
   return 0;
}