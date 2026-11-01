package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import g.dud;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class w implements Parcelable {
    public static final Parcelable.Creator<w> CREATOR = new dud(7);
    final List<String> mFragments;
    final List<s> mTransactions;

    public w(Parcel parcel) {
        this.mFragments = parcel.createStringArrayList();
        this.mTransactions = parcel.createTypedArrayList(s.CREATOR);
    }

    public w(List<String> list, List<s> list2) {
        this.mFragments = list;
        this.mTransactions = list2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public List<j> instantiate(v vVar, Map<String, Fragment> map) {
        HashMap hashMap = new HashMap(this.mFragments.size());
        for (String str : this.mFragments) {
            Fragment fragment = map.get(str);
            if (fragment != null) {
                hashMap.put(fragment.mWho, fragment);
            } else {
                m j = vVar.ah.j(str, null);
                if (j != null) {
                    Fragment instantiate = j.instantiate(vVar.bi(), vVar.af.h.getClassLoader());
                    hashMap.put(instantiate.mWho, instantiate);
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        Iterator<s> it = this.mTransactions.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().instantiate(vVar, hashMap));
        }
        return arrayList;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeStringList(this.mFragments);
        parcel.writeTypedList(this.mTransactions);
    }
}
