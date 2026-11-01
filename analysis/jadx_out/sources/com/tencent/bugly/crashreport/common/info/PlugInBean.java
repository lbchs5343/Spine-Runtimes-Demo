package com.tencent.bugly.crashreport.common.info;

import android.os.Parcel;
import android.os.Parcelable;
import g.dud;

/* loaded from: classes.dex */
public class PlugInBean implements Parcelable {
    public static final Parcelable.Creator<PlugInBean> CREATOR = new dud(25);

    /* renamed from: a, reason: collision with root package name */
    public final String f9494a;

    /* renamed from: b, reason: collision with root package name */
    public final String f9495b;

    /* renamed from: c, reason: collision with root package name */
    public final String f9496c;

    public PlugInBean(Parcel parcel) {
        this.f9494a = parcel.readString();
        this.f9495b = parcel.readString();
        this.f9496c = parcel.readString();
    }

    public PlugInBean(String str, String str2, String str3) {
        this.f9494a = str;
        this.f9495b = str2;
        this.f9496c = str3;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "plid:" + this.f9494a + " plV:" + this.f9495b + " plUUID:" + this.f9496c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f9494a);
        parcel.writeString(this.f9495b);
        parcel.writeString(this.f9496c);
    }
}
