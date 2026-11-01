package g;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayc;
import com.google.android.gms.internal.ads.zzaye;
import com.google.android.gms.internal.ads.zzblp;
import com.google.android.gms.internal.ads.zzblw;
import com.google.android.gms.internal.ads.zzbpg;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class awk extends zzayc implements apq {
    public awk(IBinder iBinder) {
        super("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager", iBinder);
    }

    @Override // g.apq
    public final float zze() {
        Parcel p = p(r(), 7);
        float readFloat = p.readFloat();
        p.recycle();
        return readFloat;
    }

    @Override // g.apq
    public final List zzg() {
        Parcel p = p(r(), 13);
        ArrayList createTypedArrayList = p.createTypedArrayList(zzblp.CREATOR);
        p.recycle();
        return createTypedArrayList;
    }

    @Override // g.apq
    public final void zzh(String str) {
        Parcel r = r();
        r.writeString(str);
        s(r, 10);
    }

    @Override // g.apq
    public final void zzi() {
        s(r(), 15);
    }

    @Override // g.apq
    public final void zzj(boolean z) {
        Parcel r = r();
        ClassLoader classLoader = zzaye.f4608a;
        r.writeInt(z ? 1 : 0);
        s(r, 17);
    }

    @Override // g.apq
    public final void zzk() {
        s(r(), 1);
    }

    @Override // g.apq
    public final void zzl(String str, bjq bjqVar) {
        Parcel r = r();
        r.writeString(null);
        zzaye.zzf(r, bjqVar);
        s(r, 6);
    }

    @Override // g.apq
    public final void zzm(dri driVar) {
        Parcel r = r();
        zzaye.zzf(r, driVar);
        s(r, 16);
    }

    @Override // g.apq
    public final void zzn(bjq bjqVar, String str) {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        r.writeString(str);
        s(r, 5);
    }

    @Override // g.apq
    public final void zzo(zzbpg zzbpgVar) {
        Parcel r = r();
        zzaye.zzf(r, zzbpgVar);
        s(r, 11);
    }

    @Override // g.apq
    public final void zzp(boolean z) {
        Parcel r = r();
        ClassLoader classLoader = zzaye.f4608a;
        r.writeInt(z ? 1 : 0);
        s(r, 4);
    }

    @Override // g.apq
    public final void zzq(float f2) {
        Parcel r = r();
        r.writeFloat(f2);
        s(r, 2);
    }

    @Override // g.apq
    public final void zzs(zzblw zzblwVar) {
        Parcel r = r();
        zzaye.zzf(r, zzblwVar);
        s(r, 12);
    }

    @Override // g.apq
    public final void zzt(String str) {
        Parcel r = r();
        r.writeString(str);
        s(r, 18);
    }

    @Override // g.apq
    public final void zzu(pw pwVar) {
        Parcel r = r();
        zzaye.zzd(r, pwVar);
        s(r, 14);
    }

    @Override // g.apq
    public final boolean zzv() {
        Parcel p = p(r(), 8);
        boolean zzg = zzaye.zzg(p);
        p.recycle();
        return zzg;
    }
}
