package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.graphics.drawable.IconCompat;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.C;
import g.agd;
import g.aqc;
import g.bjq;
import g.bpp;
import g.cie;
import g.cwg;
import g.dfu;
import g.dvw;
import g.dyy;
import g.edt;
import g.esy;
import g.gvd;
import g.gvw;
import g.gwy;
import g.ti;
import g.zc;
import java.io.IOException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;

/* loaded from: classes3.dex */
public final class zzeea extends zzbsy {

    /* renamed from: a, reason: collision with root package name */
    public String f6848a;

    /* renamed from: b, reason: collision with root package name */
    public final zzdsm f6849b;

    /* renamed from: c, reason: collision with root package name */
    public final dfu f6850c;

    /* renamed from: d, reason: collision with root package name */
    public final zzedp f6851d;

    /* renamed from: e, reason: collision with root package name */
    public final HashMap f6852e = new HashMap();

    /* renamed from: f, reason: collision with root package name */
    public final Context f6853f;

    /* renamed from: g, reason: collision with root package name */
    public String f6854g;

    public zzeea(Context context, zzedp zzedpVar, dfu dfuVar, zzdsm zzdsmVar) {
        this.f6853f = context;
        this.f6849b = zzdsmVar;
        this.f6850c = dfuVar;
        this.f6851d = zzedpVar;
    }

    public static String h(int i, String str) {
        Resources zze = ti.f20033a.f20034ab.zze();
        if (zze == null) {
            return str;
        }
        try {
            return zze.getString(i);
        } catch (Resources.NotFoundException unused) {
            return str;
        }
    }

    public static void zzc(Context context, zzdsm zzdsmVar, zzedp zzedpVar, String str, String str2) {
        zzd(context, zzdsmVar, zzedpVar, str, str2, new HashMap());
    }

    public static void zzd(Context context, zzdsm zzdsmVar, zzedp zzedpVar, String str, String str2, Map map) {
        String str3;
        ti tiVar = ti.f20033a;
        String str4 = true != tiVar.f20034ab.zzA(context) ? "offline" : gwy.ONLINE_EXTRAS_KEY;
        if (zzdsmVar != null) {
            zzdsl zza = zzdsmVar.zza();
            zza.zzb("gqi", str);
            zza.zzb("action", str2);
            zza.zzb("device_connectivity", str4);
            tiVar.v.getClass();
            zza.zzb("event_timestamp", String.valueOf(System.currentTimeMillis()));
            for (Map.Entry entry : map.entrySet()) {
                zza.zzb((String) entry.getKey(), (String) entry.getValue());
            }
            str3 = zza.zze();
        } else {
            str3 = "";
        }
        String str5 = str3;
        ti.f20033a.v.getClass();
        zzedpVar.zzd(new zzedr(System.currentTimeMillis(), str, str5, 2));
    }

    public static final PendingIntent zzr(Context context, String str, String str2, String str3) {
        Intent intent = new Intent();
        intent.setAction(str);
        intent.putExtra("offline_notification_action", str);
        intent.putExtra("gws_query_id", str2);
        intent.putExtra("uri", str3);
        if (Build.VERSION.SDK_INT < 29 || !str.equals("offline_notification_clicked")) {
            intent.setClassName(context, "com.google.android.gms.ads.AdService");
            return zzftr.zzb(context, 0, intent, zzftr.zza | C.ENCODING_PCM_32BIT, 0);
        }
        intent.setClassName(context, "com.google.android.gms.ads.NotificationHandlerActivity");
        return zzftr.zza(context, 0, intent, 201326592);
    }

    public final void i(final Activity activity, final cwg cwgVar) {
        esy esyVar = ti.f20033a.z;
        if (new dyy(activity).h()) {
            k();
            j(activity, cwgVar);
        } else if (Build.VERSION.SDK_INT >= 33) {
            activity.requestPermissions(new String[]{"android.permission.POST_NOTIFICATIONS"}, 12345);
            m(this.f6854g, "asnpdi", zzfzr.zzd());
        } else {
            AlertDialog.Builder af = esy.af(activity);
            af.setTitle(h(R.string.notifications_permission_title, "Allow app to send you notifications?")).setPositiveButton(h(R.string.notifications_permission_confirm, "Allow"), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.ads.zzedt
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    zzeea zzeeaVar = zzeea.this;
                    Activity activity2 = activity;
                    cwg cwgVar2 = cwgVar;
                    zzeeaVar.getClass();
                    HashMap hashMap = new HashMap();
                    hashMap.put("dialog_action", "confirm");
                    zzeeaVar.m(zzeeaVar.f6854g, "rtsdc", hashMap);
                    activity2.startActivity(ti.f20033a.k.d(activity2));
                    zzeeaVar.k();
                    if (cwgVar2 != null) {
                        cwgVar2.zzb();
                    }
                }
            }).setNegativeButton(h(R.string.notifications_permission_decline, "Don't allow"), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.ads.zzedu
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    zzeea zzeeaVar = zzeea.this;
                    cwg cwgVar2 = cwgVar;
                    zzeeaVar.f6851d.zzc(zzeeaVar.f6854g);
                    HashMap hashMap = new HashMap();
                    hashMap.put("dialog_action", "dismiss");
                    zzeeaVar.m(zzeeaVar.f6854g, "rtsdc", hashMap);
                    if (cwgVar2 != null) {
                        cwgVar2.zzb();
                    }
                }
            }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.google.android.gms.internal.ads.zzedv
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    zzeea zzeeaVar = zzeea.this;
                    cwg cwgVar2 = cwgVar;
                    zzeeaVar.f6851d.zzc(zzeeaVar.f6854g);
                    HashMap hashMap = new HashMap();
                    hashMap.put("dialog_action", "dismiss");
                    zzeeaVar.m(zzeeaVar.f6854g, "rtsdc", hashMap);
                    if (cwgVar2 != null) {
                        cwgVar2.zzb();
                    }
                }
            });
            af.create().show();
            m(this.f6854g, "rtsdi", zzfzr.zzd());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void j(Activity activity, final cwg cwgVar) {
        XmlResourceParser layout;
        AlertDialog create;
        ti tiVar = ti.f20033a;
        esy esyVar = tiVar.z;
        AlertDialog.Builder onCancelListener = esy.af(activity).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.google.android.gms.internal.ads.zzeds
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                cwg cwgVar2 = cwg.this;
                if (cwgVar2 != null) {
                    cwgVar2.zzb();
                }
            }
        });
        Resources zze = tiVar.f20034ab.zze();
        if (zze != null) {
            try {
                layout = zze.getLayout(R.layout.offline_ads_dialog);
            } catch (Resources.NotFoundException unused) {
            }
            if (layout != null) {
                onCancelListener.setMessage(h(R.string.offline_dialog_text, "Thanks for your interest.\nWe will share more once you're back online."));
                create = onCancelListener.create();
            } else {
                View inflate = activity.getLayoutInflater().inflate(layout, (ViewGroup) null);
                onCancelListener.setView(inflate);
                String str = this.f6854g;
                HashMap hashMap = this.f6852e;
                gvw gvwVar = (gvw) hashMap.get(str);
                String str2 = gvwVar == null ? "" : gvwVar.f18844a;
                if (!str2.isEmpty()) {
                    TextView textView = (TextView) inflate.findViewById(R.id.offline_dialog_advertiser_name);
                    textView.setVisibility(0);
                    textView.setText(str2);
                }
                gvw gvwVar2 = (gvw) hashMap.get(this.f6854g);
                Drawable drawable = gvwVar2 != null ? gvwVar2.f18846c : null;
                if (drawable != null) {
                    ((ImageView) inflate.findViewById(R.id.offline_dialog_image)).setImageDrawable(drawable);
                }
                create = onCancelListener.create();
                create.getWindow().setBackgroundDrawable(new ColorDrawable(0));
            }
            create.show();
            Timer timer = new Timer();
            timer.schedule(new aqc(create, timer, cwgVar), 3000L);
        }
        layout = null;
        if (layout != null) {
        }
        create.show();
        Timer timer2 = new Timer();
        timer2.schedule(new aqc(create, timer2, cwgVar), 3000L);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0047  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void k() {
        boolean z;
        Context context = this.f6853f;
        try {
            esy esyVar = ti.f20033a.z;
            dvw an = esy.an(context);
            bpp bppVar = new bpp(context);
            String str = this.f6848a;
            String str2 = this.f6854g;
            gvw gvwVar = (gvw) this.f6852e.get(str2);
            z = an.zzg(bppVar, new cie(str, str2, gvwVar == null ? "" : gvwVar.f18845b));
            if (!z) {
                try {
                    z = an.zzf(new bpp(context), this.f6848a, this.f6854g);
                } catch (RemoteException e2) {
                    e = e2;
                    agd.f("Failed to schedule offline notification poster.", e);
                    if (z) {
                    }
                }
            }
        } catch (RemoteException e3) {
            e = e3;
            z = false;
        }
        if (z) {
            this.f6851d.zzc(this.f6854g);
            m(this.f6854g, "offline_notification_worker_not_scheduled", zzfzr.zzd());
        }
    }

    public final void m(String str, String str2, Map map) {
        zzd(this.f6853f, this.f6849b, this.f6851d, str, str2, map);
    }

    @Override // com.google.android.gms.internal.ads.zzbsz
    public final void zze(Intent intent) {
        zzedp zzedpVar = this.f6851d;
        String stringExtra = intent.getStringExtra("offline_notification_action");
        if (stringExtra.equals("offline_notification_clicked") || stringExtra.equals("offline_notification_dismissed")) {
            String stringExtra2 = intent.getStringExtra("gws_query_id");
            String stringExtra3 = intent.getStringExtra("uri");
            zzbzz zzbzzVar = ti.f20033a.f20034ab;
            Context context = this.f6853f;
            boolean zzA = zzbzzVar.zzA(context);
            HashMap hashMap = new HashMap();
            if (stringExtra.equals("offline_notification_clicked")) {
                hashMap.put("offline_notification_action", "offline_notification_clicked");
                r10 = true == zzA ? (char) 1 : (char) 2;
                hashMap.put("obvs", String.valueOf(Build.VERSION.SDK_INT));
                hashMap.put("olaih", String.valueOf(stringExtra3.startsWith("http")));
                try {
                    Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(stringExtra3);
                    if (launchIntentForPackage == null) {
                        launchIntentForPackage = new Intent("android.intent.action.VIEW");
                        launchIntentForPackage.setData(Uri.parse(stringExtra3));
                    }
                    launchIntentForPackage.addFlags(C.ENCODING_PCM_MU_LAW);
                    context.startActivity(launchIntentForPackage);
                    hashMap.put("olaa", "olas");
                } catch (ActivityNotFoundException unused) {
                    hashMap.put("olaa", "olaf");
                }
            } else {
                hashMap.put("offline_notification_action", "offline_notification_dismissed");
            }
            m(stringExtra2, "offline_notification_action", hashMap);
            try {
                SQLiteDatabase writableDatabase = zzedpVar.getWritableDatabase();
                if (r10 == 1) {
                    zzedpVar.f6844c.execute(new zzedm(writableDatabase, stringExtra2, this.f6850c));
                } else {
                    writableDatabase.delete("offline_buffered_pings", "gws_query_id = ? AND event_state = ?", new String[]{stringExtra2, Integer.toString(0)});
                }
            } catch (SQLiteException e2) {
                agd.d("Failed to get writable offline buffering database: ".concat(e2.toString()));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbsz
    public final void zzf(String[] strArr, int[] iArr, bjq bjqVar) {
        for (int i = 0; i < strArr.length; i++) {
            if (strArr[i].equals("android.permission.POST_NOTIFICATIONS")) {
                zzeec zzeecVar = (zzeec) bpp.b(bjqVar);
                Activity zza = zzeecVar.zza();
                cwg zzb = zzeecVar.zzb();
                HashMap hashMap = new HashMap();
                if (iArr[i] == 0) {
                    hashMap.put("dialog_action", "confirm");
                    k();
                    j(zza, zzb);
                } else {
                    hashMap.put("dialog_action", "dismiss");
                    if (zzb != null) {
                        zzb.zzb();
                    }
                }
                m(this.f6854g, "asnpdc", hashMap);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbsz
    public final void zzg(bjq bjqVar) {
        zzeec zzeecVar = (zzeec) bpp.b(bjqVar);
        final Activity zza = zzeecVar.zza();
        final cwg zzb = zzeecVar.zzb();
        this.f6854g = zzeecVar.zzc();
        this.f6848a = zzeecVar.zzd();
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzie)).booleanValue()) {
            i(zza, zzb);
            return;
        }
        m(this.f6854g, "dialog_impression", zzfzr.zzd());
        esy esyVar = ti.f20033a.z;
        AlertDialog.Builder af = esy.af(zza);
        af.setTitle(h(R.string.offline_opt_in_title, "Open ad when you're back online.")).setMessage(h(R.string.offline_opt_in_message, "We'll send you a notification with a link to the advertiser site.")).setPositiveButton(h(R.string.offline_opt_in_confirm, "OK"), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.ads.zzedw
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                zzeea zzeeaVar = zzeea.this;
                Activity activity = zza;
                cwg cwgVar = zzb;
                zzeeaVar.getClass();
                HashMap hashMap = new HashMap();
                hashMap.put("dialog_action", "confirm");
                zzeeaVar.m(zzeeaVar.f6854g, "dialog_click", hashMap);
                zzeeaVar.i(activity, cwgVar);
            }
        }).setNegativeButton(h(R.string.offline_opt_in_decline, "No thanks"), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.ads.zzedx
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                zzeea zzeeaVar = zzeea.this;
                cwg cwgVar = zzb;
                zzeeaVar.f6851d.zzc(zzeeaVar.f6854g);
                HashMap hashMap = new HashMap();
                hashMap.put("dialog_action", "dismiss");
                zzeeaVar.m(zzeeaVar.f6854g, "dialog_click", hashMap);
                if (cwgVar != null) {
                    cwgVar.zzb();
                }
            }
        }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.google.android.gms.internal.ads.zzedy
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                zzeea zzeeaVar = zzeea.this;
                cwg cwgVar = zzb;
                zzeeaVar.f6851d.zzc(zzeeaVar.f6854g);
                HashMap hashMap = new HashMap();
                hashMap.put("dialog_action", "dismiss");
                zzeeaVar.m(zzeeaVar.f6854g, "dialog_click", hashMap);
                if (cwgVar != null) {
                    cwgVar.zzb();
                }
            }
        });
        af.create().show();
    }

    @Override // com.google.android.gms.internal.ads.zzbsz
    public final void zzh() {
        final dfu dfuVar = this.f6850c;
        this.f6851d.e(new zzfiv() { // from class: com.google.android.gms.internal.ads.zzedi
            @Override // com.google.android.gms.internal.ads.zzfiv
            public final Object zza(Object obj) {
                zzedp.d((SQLiteDatabase) obj, dfu.this);
                return null;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbsz
    public final void zzi(bjq bjqVar, String str, String str2) {
        zzj(bjqVar, new cie(str, str2, ""));
    }

    /* JADX WARN: Can't wrap try/catch for region: R(15:0|1|(1:3)(1:32)|4|(1:6)(1:31)|7|(9:11|12|(2:24|25)|14|15|16|17|18|19)|30|(0)|14|15|16|17|18|19) */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00ea, code lost:
    
        r10 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00eb, code lost:
    
        r11.put("notification_not_shown_reason", r10.getMessage());
        r10 = "offline_notification_failed";
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00b8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzbsz
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzj(bjq bjqVar, cie cieVar) {
        Bitmap bitmap;
        Context context = (Context) bpp.b(bjqVar);
        String str = cieVar.zza;
        String str2 = cieVar.zzb;
        String str3 = cieVar.zzc;
        gvw gvwVar = (gvw) this.f6852e.get(this.f6854g);
        String str4 = gvwVar == null ? "" : gvwVar.f18844a;
        ti.f20033a.k.b(context);
        PendingIntent zzr = zzr(context, "offline_notification_clicked", str2, str);
        PendingIntent zzr2 = zzr(context, "offline_notification_dismissed", str2, str);
        zc zcVar = new zc(context, "offline_notification_channel");
        boolean z = false;
        int i = 1;
        if (str4.isEmpty()) {
            zcVar.f20386g = zc.t(h(R.string.offline_notification_title, "You are back online! Let's pick up where we left off"));
        } else {
            zcVar.f20386g = zc.t(String.format(h(R.string.offline_notification_title_with_advertiser, "You are back online! Continue learning about %s"), str4));
        }
        zcVar.u(16, true);
        Notification notification = zcVar.s;
        notification.deleteIntent = zzr2;
        zcVar.r = zzr;
        notification.icon = context.getApplicationInfo().icon;
        zzbce zzbceVar = zzbcn.zzif;
        edt edtVar = edt.f15376a;
        zcVar.m = ((Integer) edtVar.f15379d.zza(zzbceVar)).intValue();
        if (((Boolean) edtVar.f15379d.zza(zzbcn.zzih)).booleanValue() && !str3.isEmpty()) {
            try {
                bitmap = BitmapFactory.decodeStream(new URL(str3).openConnection().getInputStream());
            } catch (IOException unused) {
            }
            if (bitmap != null) {
                try {
                    zcVar.v(bitmap);
                    gvd gvdVar = new gvd(i, z);
                    IconCompat iconCompat = new IconCompat(1);
                    iconCompat.h = bitmap;
                    gvdVar.f18799a = iconCompat;
                    gvdVar.f18800b = null;
                    gvdVar.f18801c = true;
                    zcVar.x(gvdVar);
                } catch (Resources.NotFoundException unused2) {
                }
            }
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            HashMap hashMap = new HashMap();
            notificationManager.notify(str2, 54321, zcVar.y());
            String str5 = "offline_notification_impression";
            m(str2, str5, hashMap);
        }
        bitmap = null;
        if (bitmap != null) {
        }
        NotificationManager notificationManager2 = (NotificationManager) context.getSystemService("notification");
        HashMap hashMap2 = new HashMap();
        notificationManager2.notify(str2, 54321, zcVar.y());
        String str52 = "offline_notification_impression";
        m(str2, str52, hashMap2);
    }

    public final void zzq(String str, zzdiy zzdiyVar) {
        String str2 = "";
        String zzx = !TextUtils.isEmpty(zzdiyVar.zzx()) ? zzdiyVar.zzx() : zzdiyVar.zzB() != null ? zzdiyVar.zzB() : "";
        zzbfy zzm = zzdiyVar.zzm();
        if (zzm != null) {
            try {
                str2 = zzm.zze().toString();
            } catch (RemoteException unused) {
            }
        }
        zzbfy zzn = zzdiyVar.zzn();
        Drawable drawable = null;
        if (zzn != null) {
            try {
                bjq zzf = zzn.zzf();
                if (zzf != null) {
                    drawable = (Drawable) bpp.b(zzf);
                }
            } catch (RemoteException unused2) {
            }
        }
        this.f6852e.put(str, new gvw(zzx, str2, drawable));
    }
}
