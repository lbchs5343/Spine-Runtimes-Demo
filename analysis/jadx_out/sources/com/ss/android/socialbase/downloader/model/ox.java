package com.ss.android.socialbase.downloader.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import g.awf;

/* loaded from: classes.dex */
public class ox implements Parcelable, Comparable {
    public static final Parcelable.Creator<ox> CREATOR = new Parcelable.Creator<ox>() { // from class: com.ss.android.socialbase.downloader.model.ox.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: dq, reason: merged with bridge method [inline-methods] */
        public ox createFromParcel(Parcel parcel) {
            return new ox(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: dq, reason: merged with bridge method [inline-methods] */
        public ox[] newArray(int i) {
            return new ox[i];
        }
    };

    /* renamed from: d, reason: collision with root package name */
    private final String f9446d;
    private final String dq;

    public ox(Parcel parcel) {
        this.dq = parcel.readString();
        this.f9446d = parcel.readString();
    }

    public ox(String str, String str2) {
        this.dq = str;
        this.f9446d = str2;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        if (!(obj instanceof ox)) {
            return 1;
        }
        ox oxVar = (ox) obj;
        if (TextUtils.equals(this.dq, oxVar.dq())) {
            return 0;
        }
        String str = this.dq;
        if (str == null) {
            return -1;
        }
        int compareTo = str.compareTo(oxVar.dq());
        if (compareTo > 0) {
            return 1;
        }
        return compareTo < 0 ? -1 : 0;
    }

    public String d() {
        return this.f9446d;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String dq() {
        return this.dq;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            ox oxVar = (ox) obj;
            if (TextUtils.equals(this.dq, oxVar.dq) && TextUtils.equals(this.f9446d, oxVar.f9446d)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        String str = this.dq;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f9446d;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("HttpHeader{name='");
        sb.append(this.dq);
        sb.append("', value='");
        return awf.ad(sb, this.f9446d, "'}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.dq);
        parcel.writeString(this.f9446d);
    }
}
