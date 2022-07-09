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
#define ll long long
#define vc vector
#define pb push_back
#define umap unordered_map
/*Util*/
#define __lcm(a,b) ((a)/__gcd(a,b)*(b))
#define cdiv(a,b) ((a<=0)?((a)/(b)):(1 + ((a)-1)/(b)))
/*IO*/
#define endl "\n"
#define setd(n) cout.precision(n);cout<<fixed;
#define read(arr, n) for(int i=0;i<n;++i){cin>>arr[i];} 
/*TEST CASES*/
#define test solve();
#define tests int t;cin>>t;for(;t!=0;--t){solve();cout<<"\n";}
/*------------------------------------------------------------------------------------------------*/

void solve() {
   int n; cin >> n;
   int a[n]; read(a,n);
   sort(a, a+n);
   int last = a[0];
   list<pair<int,int>> l = {{a[0],1}};
   for(int i=1; i<n; ++i) {
      if (a[i] == last) {
         l.back().second++;
      } else {
         l.pb(make_pair(a[i], 1));
      }
      last = a[i];
   }
   ll score = 0;
   while(!l.empty()){
      list<pair<int,int>> cur;
      cur.pb(l.front());
      int last_num = l.front().first;
      l.pop_front();
      while(l.front().first == last_num+1){
         cur.pb(l.front());
         last_num = l.front().first;
         l.pop_front();
      }
      ll dp[cur.size()+1];
      dp[0]=0;
      int init_sz = cur.size();
      for(int i = 1; i<=init_sz; ++i){
         if(i==1) {
            dp[i]=(ll)cur.front().first*cur.front().second;
         } else if(i==2) {
            dp[i]=max((ll)cur.front().first*cur.front().second,dp[1]);
         } else {
            dp[i]=max((ll)cur.front().first*cur.front().second + dp[i-2], dp[i-1]);
         }
         cur.pop_front();
      }
      score+=dp[init_sz];
   }
   cout << score;
}

int main() {
   ios::sync_with_stdio(false); cin.tie(0); cout.tie(0);
   test;
   return 0;
}