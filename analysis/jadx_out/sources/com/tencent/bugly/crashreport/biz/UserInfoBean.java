package com.tencent.bugly.crashreport.biz;

import android.os.Parcel;
import android.os.Parcelable;
import com.bytedance.sdk.openadsdk.mediation.init.MediationConfigUserInfoForSegment;
import com.tencent.bugly.proguard.ap;
import g.rj;
import java.util.Map;

/* loaded from: classes.dex */
public class UserInfoBean implements Parcelable {
    public static final Parcelable.Creator<UserInfoBean> CREATOR = new rj(2);

    /* renamed from: a, reason: collision with root package name */
    public long f9487a;

    /* renamed from: b, reason: collision with root package name */
    public int f9488b;

    /* renamed from: c, reason: collision with root package name */
    public String f9489c;

    /* renamed from: d, reason: collision with root package name */
    public String f9490d;

    /* renamed from: e, reason: collision with root package name */
    public long f9491e;

    /* renamed from: f, reason: collision with root package name */
    public long f9492f;

    /* renamed from: g, reason: collision with root package name */
    public long f9493g;
    public long h;
    public long i;
    public String j;
    public long k;
    public boolean l;
    public String m;
    public String n;
    public int o;
    public int p;
    public int q;
    public Map<String, String> r;
    public Map<String, String> s;

    public UserInfoBean() {
        this.k = 0L;
        this.l = false;
        this.m = MediationConfigUserInfoForSegment.GENDER_UNKNOWN;
        this.p = -1;
        this.q = -1;
        this.r = null;
        this.s = null;
    }

    public UserInfoBean(Parcel parcel) {
        this.k = 0L;
        this.l = false;
        this.m = MediationConfigUserInfoForSegment.GENDER_UNKNOWN;
        this.p = -1;
        this.q = -1;
        this.r = null;
        this.s = null;
        this.f9488b = parcel.readInt();
        this.f9489c = parcel.readString();
        this.f9490d = parcel.readString();
        this.f9491e = parcel.readLong();
        this.f9492f = parcel.readLong();
        this.f9493g = parcel.readLong();
        this.h = parcel.readLong();
        this.i = parcel.readLong();
        this.j = parcel.readString();
        this.k = parcel.readLong();
        this.l = parcel.readByte() == 1;
        this.m = parcel.readString();
        this.p = parcel.readInt();
        this.q = parcel.readInt();
        this.r = ap.b(parcel);
        this.s = ap.b(parcel);
        this.n = parcel.readString();
        this.o = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f9488b);
        parcel.writeString(this.f9489c);
        parcel.writeString(this.f9490d);
        parcel.writeLong(this.f9491e);
        parcel.writeLong(this.f9492f);
        parcel.writeLong(this.f9493g);
        parcel.writeLong(this.h);
        parcel.writeLong(this.i);
        parcel.writeString(this.j);
        parcel.writeLong(this.k);
        parcel.writeByte(this.l ? (byte) 1 : (byte) 0);
        parcel.writeString(this.m);
        parcel.writeInt(this.p);
        parcel.writeInt(this.q);
        ap.b(parcel, this.r);
        ap.b(parcel, this.s);
        parcel.writeString(this.n);
        parcel.writeInt(this.o);
    }
}
