package g;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayc;
import com.google.android.gms.internal.ads.zzaye;
import com.google.android.gms.internal.ads.zzbgb;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzbkq;
import com.google.android.gms.internal.ads.zzbks;
import com.google.android.gms.internal.ads.zzbkt;
import com.google.android.gms.internal.ads.zzbpg;
import com.google.android.gms.internal.ads.zzbsy;
import com.google.android.gms.internal.ads.zzbsz;
import com.google.android.gms.internal.ads.zzbtf;
import com.google.android.gms.internal.ads.zzbtg;
import com.google.android.gms.internal.ads.zzbxb;
import com.google.android.gms.internal.ads.zzbxc;
import com.google.android.gms.internal.ads.zzbzg;
import com.google.android.gms.internal.ads.zzbzh;

/* loaded from: classes3.dex */
public final class uq extends zzayc implements drf {
    @Override // g.drf
    public final dzg a(bjq bjqVar, zzbpg zzbpgVar, int i) {
        dzg auiVar;
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        zzaye.zzf(r, zzbpgVar);
        r.writeInt(243799000);
        Parcel p = p(r, 18);
        IBinder readStrongBinder = p.readStrongBinder();
        if (readStrongBinder == null) {
            auiVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdPreloader");
            auiVar = queryLocalInterface instanceof dzg ? (dzg) queryLocalInterface : new aui(readStrongBinder);
        }
        p.recycle();
        return auiVar;
    }

    @Override // g.drf
    public final zzbgc b(bjq bjqVar, bjq bjqVar2) {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        zzaye.zzf(r, bjqVar2);
        Parcel p = p(r, 5);
        zzbgc zzdA = zzbgb.zzdA(p.readStrongBinder());
        p.recycle();
        return zzdA;
    }

    @Override // g.drf
    public final bhk c(bjq bjqVar, zzbpg zzbpgVar, int i) {
        bhk jjVar;
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        zzaye.zzf(r, zzbpgVar);
        r.writeInt(243799000);
        Parcel p = p(r, 17);
        IBinder readStrongBinder = p.readStrongBinder();
        if (readStrongBinder == null) {
            jjVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IOutOfContextTester");
            jjVar = queryLocalInterface instanceof bhk ? (bhk) queryLocalInterface : new jj(readStrongBinder);
        }
        p.recycle();
        return jjVar;
    }

    @Override // g.drf
    public final apq d(bjq bjqVar, int i) {
        apq awkVar;
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        r.writeInt(243799000);
        Parcel p = p(r, 9);
        IBinder readStrongBinder = p.readStrongBinder();
        if (readStrongBinder == null) {
            awkVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            awkVar = queryLocalInterface instanceof apq ? (apq) queryLocalInterface : new awk(readStrongBinder);
        }
        p.recycle();
        return awkVar;
    }

    @Override // g.drf
    public final zzbxc e(bjq bjqVar, String str, zzbpg zzbpgVar, int i) {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        r.writeString(str);
        zzaye.zzf(r, zzbpgVar);
        r.writeInt(243799000);
        Parcel p = p(r, 12);
        zzbxc zzq = zzbxb.zzq(p.readStrongBinder());
        p.recycle();
        return zzq;
    }

    @Override // g.drf
    public final zzbkt f(bjq bjqVar, zzbpg zzbpgVar, int i, zzbkq zzbkqVar) {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        zzaye.zzf(r, zzbpgVar);
        r.writeInt(243799000);
        zzaye.zzf(r, zzbkqVar);
        Parcel p = p(r, 16);
        zzbkt zzb = zzbks.zzb(p.readStrongBinder());
        p.recycle();
        return zzb;
    }

    @Override // g.drf
    public final deq g(bjq bjqVar, eno enoVar, String str, zzbpg zzbpgVar, int i) {
        deq hiVar;
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        zzaye.zzd(r, enoVar);
        r.writeString(str);
        zzaye.zzf(r, zzbpgVar);
        r.writeInt(243799000);
        Parcel p = p(r, 2);
        IBinder readStrongBinder = p.readStrongBinder();
        if (readStrongBinder == null) {
            hiVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            hiVar = queryLocalInterface instanceof deq ? (deq) queryLocalInterface : new hi(readStrongBinder);
        }
        p.recycle();
        return hiVar;
    }

    @Override // g.drf
    public final zzbzh h(bjq bjqVar, zzbpg zzbpgVar, int i) {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        zzaye.zzf(r, zzbpgVar);
        r.writeInt(243799000);
        Parcel p = p(r, 14);
        zzbzh zzb = zzbzg.zzb(p.readStrongBinder());
        p.recycle();
        return zzb;
    }

    @Override // g.drf
    public final deq i(bjq bjqVar, eno enoVar, String str, int i) {
        deq hiVar;
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        zzaye.zzd(r, enoVar);
        r.writeString(str);
        r.writeInt(243799000);
        Parcel p = p(r, 10);
        IBinder readStrongBinder = p.readStrongBinder();
        if (readStrongBinder == null) {
            hiVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            hiVar = queryLocalInterface instanceof deq ? (deq) queryLocalInterface : new hi(readStrongBinder);
        }
        p.recycle();
        return hiVar;
    }

    @Override // g.drf
    public final deq j(bjq bjqVar, eno enoVar, String str, zzbpg zzbpgVar, int i) {
        deq hiVar;
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        zzaye.zzd(r, enoVar);
        r.writeString(str);
        zzaye.zzf(r, zzbpgVar);
        r.writeInt(243799000);
        Parcel p = p(r, 1);
        IBinder readStrongBinder = p.readStrongBinder();
        if (readStrongBinder == null) {
            hiVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            hiVar = queryLocalInterface instanceof deq ? (deq) queryLocalInterface : new hi(readStrongBinder);
        }
        p.recycle();
        return hiVar;
    }

    @Override // g.drf
    public final hav k(bjq bjqVar, String str, zzbpg zzbpgVar, int i) {
        hav jrVar;
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        r.writeString(str);
        zzaye.zzf(r, zzbpgVar);
        r.writeInt(243799000);
        Parcel p = p(r, 3);
        IBinder readStrongBinder = p.readStrongBinder();
        if (readStrongBinder == null) {
            jrVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            jrVar = queryLocalInterface instanceof hav ? (hav) queryLocalInterface : new jr(readStrongBinder);
        }
        p.recycle();
        return jrVar;
    }

    @Override // g.drf
    public final deq m(bjq bjqVar, eno enoVar, String str, zzbpg zzbpgVar, int i) {
        deq hiVar;
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        zzaye.zzd(r, enoVar);
        r.writeString(str);
        zzaye.zzf(r, zzbpgVar);
        r.writeInt(243799000);
        Parcel p = p(r, 13);
        IBinder readStrongBinder = p.readStrongBinder();
        if (readStrongBinder == null) {
            hiVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            hiVar = queryLocalInterface instanceof deq ? (deq) queryLocalInterface : new hi(readStrongBinder);
        }
        p.recycle();
        return hiVar;
    }

    @Override // g.drf
    public final zzbsz n(bjq bjqVar, zzbpg zzbpgVar, int i) {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        zzaye.zzf(r, zzbpgVar);
        r.writeInt(243799000);
        Parcel p = p(r, 15);
        zzbsz zzb = zzbsy.zzb(p.readStrongBinder());
        p.recycle();
        return zzb;
    }

    @Override // g.drf
    public final zzbtg zzn(bjq bjqVar) {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        Parcel p = p(r, 8);
        zzbtg zzI = zzbtf.zzI(p.readStrongBinder());
        p.recycle();
        return zzI;
    }
}
