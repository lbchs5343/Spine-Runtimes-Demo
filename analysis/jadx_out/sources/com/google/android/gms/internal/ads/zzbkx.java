package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.RemoteException;
import g.agd;
import g.cbv;
import g.cja;
import g.ckd;
import g.edt;
import g.fnd;
import g.ph;

/* loaded from: classes3.dex */
public final class zzbkx {

    /* renamed from: a, reason: collision with root package name */
    public final Context f4860a;

    /* renamed from: b, reason: collision with root package name */
    public final fnd f4861b;

    /* renamed from: c, reason: collision with root package name */
    public zzbkt f4862c;

    public zzbkx(Context context, fnd fndVar) {
        ckd.k(context);
        ckd.k(fndVar);
        this.f4860a = context;
        this.f4861b = fndVar;
        zzbcn.zza(context);
    }

    public static final boolean zzc(String str) {
        zzbce zzbceVar = zzbcn.zzjC;
        edt edtVar = edt.f15376a;
        if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
            ckd.k(str);
            if (str.length() > ((Integer) edtVar.f15379d.zza(zzbcn.zzjE)).intValue()) {
                agd.c("H5 GMSG exceeds max length");
                return false;
            }
            Uri parse = Uri.parse(str);
            if ("gmsg".equals(parse.getScheme()) && "mobileads.google.com".equals(parse.getHost()) && "/h5ads".equals(parse.getPath())) {
                return true;
            }
        }
        return false;
    }

    public final void d() {
        if (this.f4862c != null) {
            return;
        }
        ph phVar = cbv.f12612a.f12616e;
        zzbpc zzbpcVar = new zzbpc();
        phVar.getClass();
        Context context = this.f4860a;
        this.f4862c = (zzbkt) new cja(context, zzbpcVar, this.f4861b).j(context, false);
    }

    public final void zza() {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzjC)).booleanValue()) {
            d();
            zzbkt zzbktVar = this.f4862c;
            if (zzbktVar != null) {
                try {
                    zzbktVar.zze();
                } catch (RemoteException e2) {
                    agd.g("#007 Could not call remote method.", e2);
                }
            }
        }
    }

    public final boolean zzb(String str) {
        if (!zzc(str)) {
            return false;
        }
        d();
        zzbkt zzbktVar = this.f4862c;
        if (zzbktVar == null) {
            return false;
        }
        try {
            zzbktVar.zzf(str);
            return true;
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
            return true;
        }
    }
}
