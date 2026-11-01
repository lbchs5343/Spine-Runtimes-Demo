package com.tencent.bugly.crashreport.common.strategy;

import android.os.Parcel;
import android.os.Parcelable;
import com.tencent.bugly.proguard.ap;
import g.awf;
import g.dud;
import java.util.Map;

/* loaded from: classes.dex */
public class StrategyBean implements Parcelable {
    public static final Parcelable.Creator<StrategyBean> CREATOR = new dud(27);

    /* renamed from: a, reason: collision with root package name */
    public static String f9497a = "https://android.bugly.qq.com/rqd/async";

    /* renamed from: b, reason: collision with root package name */
    public static String f9498b = "https://android.bugly.qq.com/rqd/async";

    /* renamed from: c, reason: collision with root package name */
    public static String f9499c;

    /* renamed from: d, reason: collision with root package name */
    public long f9500d;

    /* renamed from: e, reason: collision with root package name */
    public long f9501e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f9502f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f9503g;
    public boolean h;
    public boolean i;
    public boolean j;
    public boolean k;
    public boolean l;
    public boolean m;
    public boolean n;
    public long o;
    public long p;
    public String q;
    public String r;
    public String s;
    public Map<String, String> t;
    public int u;
    public long v;
    public long w;

    public StrategyBean() {
        this.f9500d = -1L;
        this.f9501e = -1L;
        this.f9502f = true;
        this.f9503g = true;
        this.h = true;
        this.i = true;
        this.j = false;
        this.k = true;
        this.l = true;
        this.m = true;
        this.n = true;
        this.p = 30000L;
        this.q = f9497a;
        this.r = f9498b;
        this.u = 10;
        this.v = 300000L;
        this.w = -1L;
        this.f9501e = System.currentTimeMillis();
        StringBuilder o = awf.o("S(@L@L@)");
        f9499c = o.toString();
        o.setLength(0);
        o.append("*^@K#K@!");
        this.s = o.toString();
    }

    public StrategyBean(Parcel parcel) {
        this.f9500d = -1L;
        this.f9501e = -1L;
        boolean z = true;
        this.f9502f = true;
        this.f9503g = true;
        this.h = true;
        this.i = true;
        this.j = false;
        this.k = true;
        this.l = true;
        this.m = true;
        this.n = true;
        this.p = 30000L;
        this.q = f9497a;
        this.r = f9498b;
        this.u = 10;
        this.v = 300000L;
        this.w = -1L;
        try {
            f9499c = "S(@L@L@)";
            this.f9501e = parcel.readLong();
            this.f9502f = parcel.readByte() == 1;
            this.f9503g = parcel.readByte() == 1;
            this.h = parcel.readByte() == 1;
            this.q = parcel.readString();
            this.r = parcel.readString();
            this.s = parcel.readString();
            this.t = ap.b(parcel);
            this.i = parcel.readByte() == 1;
            this.j = parcel.readByte() == 1;
            this.m = parcel.readByte() == 1;
            this.n = parcel.readByte() == 1;
            this.p = parcel.readLong();
            this.k = parcel.readByte() == 1;
            if (parcel.readByte() != 1) {
                z = false;
            }
            this.l = z;
            this.o = parcel.readLong();
            this.u = parcel.readInt();
            this.v = parcel.readLong();
            this.w = parcel.readLong();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f9501e);
        parcel.writeByte(this.f9502f ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f9503g ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.h ? (byte) 1 : (byte) 0);
        parcel.writeString(this.q);
        parcel.writeString(this.r);
        parcel.writeString(this.s);
        ap.b(parcel, this.t);
        parcel.writeByte(this.i ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.j ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.m ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.n ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.p);
        parcel.writeByte(this.k ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.l ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.o);
        parcel.writeInt(this.u);
        parcel.writeLong(this.v);
        parcel.writeLong(this.w);
    }
}
