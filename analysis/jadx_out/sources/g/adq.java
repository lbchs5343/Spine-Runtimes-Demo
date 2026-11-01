package g;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class adq extends exk {
    public static final Parcelable.Creator<adq> CREATOR = new cqu(15);
    public final int zza;
    public final int zzb;
    public final String zzc;
    public final long zzd;

    public adq(int i, int i2, String str, long j) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = str;
        this.zzd = j;
    }

    public static adq zza(JSONObject jSONObject) throws JSONException {
        return new adq(jSONObject.getInt("type_num"), jSONObject.getInt("precision_num"), jSONObject.getString("currency"), jSONObject.getLong("value"));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zza;
        int af = egh.af(parcel, 20293);
        egh.aq(parcel, 1, 4);
        parcel.writeInt(i2);
        int i3 = this.zzb;
        egh.aq(parcel, 2, 4);
        parcel.writeInt(i3);
        egh.p(parcel, 3, this.zzc);
        long j = this.zzd;
        egh.aq(parcel, 4, 8);
        parcel.writeLong(j);
        egh.s(parcel, af);
    }
}
