package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import g.awf;
import g.dud;
import g.fqv;
import g.fzt;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Map;

/* loaded from: classes.dex */
public final class s implements Parcelable {
    public static final Parcelable.Creator<s> CREATOR = new dud(6);
    private static final String TAG = "FragmentManager";
    final int mBreadCrumbShortTitleRes;
    final CharSequence mBreadCrumbShortTitleText;
    final int mBreadCrumbTitleRes;
    final CharSequence mBreadCrumbTitleText;
    final int[] mCurrentMaxLifecycleStates;
    final ArrayList<String> mFragmentWhos;
    final int mIndex;
    final String mName;
    final int[] mOldMaxLifecycleStates;
    final int[] mOps;
    final boolean mReorderingAllowed;
    final ArrayList<String> mSharedElementSourceNames;
    final ArrayList<String> mSharedElementTargetNames;
    final int mTransition;

    public s(Parcel parcel) {
        this.mOps = parcel.createIntArray();
        this.mFragmentWhos = parcel.createStringArrayList();
        this.mOldMaxLifecycleStates = parcel.createIntArray();
        this.mCurrentMaxLifecycleStates = parcel.createIntArray();
        this.mTransition = parcel.readInt();
        this.mName = parcel.readString();
        this.mIndex = parcel.readInt();
        this.mBreadCrumbTitleRes = parcel.readInt();
        Parcelable.Creator creator = TextUtils.CHAR_SEQUENCE_CREATOR;
        this.mBreadCrumbTitleText = (CharSequence) creator.createFromParcel(parcel);
        this.mBreadCrumbShortTitleRes = parcel.readInt();
        this.mBreadCrumbShortTitleText = (CharSequence) creator.createFromParcel(parcel);
        this.mSharedElementSourceNames = parcel.createStringArrayList();
        this.mSharedElementTargetNames = parcel.createStringArrayList();
        this.mReorderingAllowed = parcel.readInt() != 0;
    }

    public s(j jVar) {
        int size = jVar.p.size();
        this.mOps = new int[size * 6];
        if (!jVar.w) {
            throw new IllegalStateException("Not on back stack");
        }
        this.mFragmentWhos = new ArrayList<>(size);
        this.mOldMaxLifecycleStates = new int[size];
        this.mCurrentMaxLifecycleStates = new int[size];
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            fzt fztVar = (fzt) jVar.p.get(i2);
            int i3 = i + 1;
            this.mOps[i] = fztVar.f17747d;
            ArrayList<String> arrayList = this.mFragmentWhos;
            Fragment fragment = fztVar.f17750g;
            arrayList.add(fragment != null ? fragment.mWho : null);
            int[] iArr = this.mOps;
            iArr[i3] = fztVar.h ? 1 : 0;
            iArr[i + 2] = fztVar.f17745b;
            iArr[i + 3] = fztVar.f17746c;
            int i4 = i + 5;
            iArr[i + 4] = fztVar.f17748e;
            i += 6;
            iArr[i4] = fztVar.i;
            this.mOldMaxLifecycleStates[i2] = fztVar.f17744a.ordinal();
            this.mCurrentMaxLifecycleStates[i2] = fztVar.f17749f.ordinal();
        }
        this.mTransition = jVar.q;
        this.mName = jVar.i;
        this.mIndex = jVar.f193c;
        this.mBreadCrumbTitleRes = jVar.s;
        this.mBreadCrumbTitleText = jVar.u;
        this.mBreadCrumbShortTitleRes = jVar.j;
        this.mBreadCrumbShortTitleText = jVar.n;
        this.mSharedElementSourceNames = jVar.r;
        this.mSharedElementTargetNames = jVar.l;
        this.mReorderingAllowed = jVar.k;
    }

    private void fillInBackStackRecord(j jVar) {
        int i = 0;
        int i2 = 0;
        while (true) {
            int[] iArr = this.mOps;
            boolean z = true;
            if (i >= iArr.length) {
                jVar.q = this.mTransition;
                jVar.i = this.mName;
                jVar.w = true;
                jVar.s = this.mBreadCrumbTitleRes;
                jVar.u = this.mBreadCrumbTitleText;
                jVar.j = this.mBreadCrumbShortTitleRes;
                jVar.n = this.mBreadCrumbShortTitleText;
                jVar.r = this.mSharedElementSourceNames;
                jVar.l = this.mSharedElementTargetNames;
                jVar.k = this.mReorderingAllowed;
                return;
            }
            fzt fztVar = new fzt();
            int i3 = i + 1;
            fztVar.f17747d = iArr[i];
            if (v.ao(2)) {
                Objects.toString(jVar);
                int i4 = this.mOps[i3];
            }
            fztVar.f17744a = fqv.values()[this.mOldMaxLifecycleStates[i2]];
            fztVar.f17749f = fqv.values()[this.mCurrentMaxLifecycleStates[i2]];
            int[] iArr2 = this.mOps;
            int i5 = i + 2;
            if (iArr2[i3] == 0) {
                z = false;
            }
            fztVar.h = z;
            int i6 = iArr2[i5];
            fztVar.f17745b = i6;
            int i7 = iArr2[i + 3];
            fztVar.f17746c = i7;
            int i8 = i + 5;
            int i9 = iArr2[i + 4];
            fztVar.f17748e = i9;
            i += 6;
            int i10 = iArr2[i8];
            fztVar.i = i10;
            jVar.t = i6;
            jVar.v = i7;
            jVar.m = i9;
            jVar.o = i10;
            jVar.x(fztVar);
            i2++;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public j instantiate(v vVar) {
        j jVar = new j(vVar);
        fillInBackStackRecord(jVar);
        jVar.f193c = this.mIndex;
        for (int i = 0; i < this.mFragmentWhos.size(); i++) {
            String str = this.mFragmentWhos.get(i);
            if (str != null) {
                ((fzt) jVar.p.get(i)).f17750g = vVar.ah.k(str);
            }
        }
        jVar.d(1);
        return jVar;
    }

    public j instantiate(v vVar, Map<String, Fragment> map) {
        j jVar = new j(vVar);
        fillInBackStackRecord(jVar);
        for (int i = 0; i < this.mFragmentWhos.size(); i++) {
            String str = this.mFragmentWhos.get(i);
            if (str != null) {
                Fragment fragment = map.get(str);
                if (fragment == null) {
                    throw new IllegalStateException(awf.r(new StringBuilder("Restoring FragmentTransaction "), this.mName, " failed due to missing saved state for Fragment (", str, ")"));
                }
                ((fzt) jVar.p.get(i)).f17750g = fragment;
            }
        }
        return jVar;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeIntArray(this.mOps);
        parcel.writeStringList(this.mFragmentWhos);
        parcel.writeIntArray(this.mOldMaxLifecycleStates);
        parcel.writeIntArray(this.mCurrentMaxLifecycleStates);
        parcel.writeInt(this.mTransition);
        parcel.writeString(this.mName);
        parcel.writeInt(this.mIndex);
        parcel.writeInt(this.mBreadCrumbTitleRes);
        TextUtils.writeToParcel(this.mBreadCrumbTitleText, parcel, 0);
        parcel.writeInt(this.mBreadCrumbShortTitleRes);
        TextUtils.writeToParcel(this.mBreadCrumbShortTitleText, parcel, 0);
        parcel.writeStringList(this.mSharedElementSourceNames);
        parcel.writeStringList(this.mSharedElementTargetNames);
        parcel.writeInt(this.mReorderingAllowed ? 1 : 0);
    }
}
