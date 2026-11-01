package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import g.egh;
import g.exk;
import g.ffb;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;

/* loaded from: classes3.dex */
public final class zzbwv extends exk {
    public static final Parcelable.Creator<zzbwv> CREATOR = new zzbww();
    public final String zza;
    public final int zzb;

    public zzbwv(String str, int i) {
        this.zza = str;
        this.zzb = i;
    }

    public static zzbwv zza(JSONArray jSONArray) throws JSONException {
        if (jSONArray == null || jSONArray.length() == 0) {
            return null;
        }
        return new zzbwv(jSONArray.getJSONObject(0).optString("rb_type"), jSONArray.getJSONObject(0).optInt("rb_amount"));
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof zzbwv)) {
            zzbwv zzbwvVar = (zzbwv) obj;
            if (ffb.w(this.zza, zzbwvVar.zza)) {
                if (ffb.w(Integer.valueOf(this.zzb), Integer.valueOf(zzbwvVar.zzb))) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zza, Integer.valueOf(this.zzb)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int af = egh.af(parcel, 20293);
        egh.p(parcel, 2, str);
        int i2 = this.zzb;
        egh.aq(parcel, 3, 4);
        parcel.writeInt(i2);
        egh.s(parcel, af);
    }
}
