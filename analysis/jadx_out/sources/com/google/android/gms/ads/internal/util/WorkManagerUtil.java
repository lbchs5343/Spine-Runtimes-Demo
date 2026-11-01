package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.os.Build;
import android.os.Parcel;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.ads.internal.offline.buffering.OfflineNotificationPoster;
import com.google.android.gms.ads.internal.offline.buffering.OfflinePingSender;
import com.google.android.gms.internal.ads.zzayd;
import com.google.android.gms.internal.ads.zzaye;
import com.google.android.gms.internal.ads.zzfxd;
import g.agd;
import g.awt;
import g.bff;
import g.bho;
import g.bjq;
import g.bmr;
import g.bpp;
import g.cie;
import g.crv;
import g.dnx;
import g.dvw;
import g.dwa;
import g.fkj;
import g.flk;
import g.fxb;
import g.gmw;
import g.gpk;
import g.gsv;
import g.im;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;

/* loaded from: classes3.dex */
public class WorkManagerUtil extends zzayd implements dvw {
    @UsedByReflection("This class must be instantiated reflectively so that the default class loader can be used.")
    public WorkManagerUtil() {
        super("com.google.android.gms.ads.internal.util.IWorkManagerUtil");
    }

    public static void a(Context context) {
        try {
            Context applicationContext = context.getApplicationContext();
            flk flkVar = new flk(new bmr(27));
            bff.p(applicationContext, "context");
            fxb.bg(applicationContext, flkVar);
        } catch (IllegalStateException unused) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            bjq d2 = bpp.d(parcel.readStrongBinder());
            String readString = parcel.readString();
            String readString2 = parcel.readString();
            zzaye.zzc(parcel);
            boolean zzf = zzf(d2, readString, readString2);
            parcel2.writeNoException();
            parcel2.writeInt(zzf ? 1 : 0);
            return true;
        }
        if (i == 2) {
            bjq d3 = bpp.d(parcel.readStrongBinder());
            zzaye.zzc(parcel);
            zze(d3);
            parcel2.writeNoException();
            return true;
        }
        if (i != 3) {
            return false;
        }
        bjq d4 = bpp.d(parcel.readStrongBinder());
        cie cieVar = (cie) zzaye.zza(parcel, cie.CREATOR);
        zzaye.zzc(parcel);
        boolean zzg = zzg(d4, cieVar);
        parcel2.writeNoException();
        parcel2.writeInt(zzg ? 1 : 0);
        return true;
    }

    @Override // g.dvw
    public final void zze(bjq bjqVar) {
        Context context = (Context) bpp.b(bjqVar);
        a(context);
        try {
            fxb n = awt.n(context);
            n.bj("offline_ping_sender_work");
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            dnx dnxVar = dnx.CONNECTED;
            bff.p(dnxVar, "networkType");
            bho bhoVar = new bho(new im(null), dnxVar, false, false, false, false, -1L, -1L, Build.VERSION.SDK_INT >= 24 ? gsv.be(linkedHashSet) : gpk.f18539a);
            crv crvVar = new crv(OfflinePingSender.class);
            ((fkj) crvVar.f13614b).r = bhoVar;
            ((LinkedHashSet) crvVar.f13615c).add("offline_ping_sender_work");
            n.ar((gmw) crvVar.f());
        } catch (IllegalStateException unused) {
            zzfxd zzfxdVar = agd.f10175a;
        }
    }

    @Override // g.dvw
    public final boolean zzf(bjq bjqVar, String str, String str2) {
        return zzg(bjqVar, new cie(str, str2, ""));
    }

    @Override // g.dvw
    public final boolean zzg(bjq bjqVar, cie cieVar) {
        Context context = (Context) bpp.b(bjqVar);
        a(context);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        dnx dnxVar = dnx.CONNECTED;
        bff.p(dnxVar, "networkType");
        bho bhoVar = new bho(new im(null), dnxVar, false, false, false, false, -1L, -1L, Build.VERSION.SDK_INT >= 24 ? gsv.be(linkedHashSet) : gpk.f18539a);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("uri", cieVar.zza);
        linkedHashMap.put("gws_query_id", cieVar.zzb);
        linkedHashMap.put("image_url", cieVar.zzc);
        dwa dwaVar = new dwa(linkedHashMap);
        bff.k(dwaVar);
        crv crvVar = new crv(OfflineNotificationPoster.class);
        fkj fkjVar = (fkj) crvVar.f13614b;
        fkjVar.r = bhoVar;
        fkjVar.f16932g = dwaVar;
        ((LinkedHashSet) crvVar.f13615c).add("offline_notification_work");
        try {
            awt.n(context).ar((gmw) crvVar.f());
            return true;
        } catch (IllegalStateException unused) {
            zzfxd zzfxdVar = agd.f10175a;
            return false;
        }
    }
}
