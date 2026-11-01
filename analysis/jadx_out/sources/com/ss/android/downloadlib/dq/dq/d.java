package com.ss.android.downloadlib.dq.dq;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class d implements Parcelable {
    public static final Parcelable.Creator<d> CREATOR = new Parcelable.Creator<d>() { // from class: com.ss.android.downloadlib.dq.dq.d.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: dq, reason: merged with bridge method [inline-methods] */
        public d createFromParcel(Parcel parcel) {
            return new d(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: dq, reason: merged with bridge method [inline-methods] */
        public d[] newArray(int i) {
            return new d[i];
        }
    };

    /* renamed from: d, reason: collision with root package name */
    public int f9216d;
    public int dq;
    public String iw;
    public String ox;
    public int p;
    public String s;

    public d() {
        this.ox = "";
        this.s = "";
        this.iw = "";
    }

    public d(Parcel parcel) {
        this.ox = "";
        this.s = "";
        this.iw = "";
        this.dq = parcel.readInt();
        this.f9216d = parcel.readInt();
        this.ox = parcel.readString();
        this.s = parcel.readString();
        this.iw = parcel.readString();
        this.p = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            d dVar = (d) obj;
            if (this.dq == dVar.dq && this.f9216d == dVar.f9216d) {
                String str = this.ox;
                if (str != null) {
                    return str.equals(dVar.ox);
                }
                if (dVar.ox == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public int hashCode() {
        int i = ((this.dq * 31) + this.f9216d) * 31;
        String str = this.ox;
        return i + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.dq);
        parcel.writeInt(this.f9216d);
        parcel.writeString(this.ox);
        parcel.writeString(this.s);
        parcel.writeString(this.iw);
        parcel.writeInt(this.p);
    }
}
