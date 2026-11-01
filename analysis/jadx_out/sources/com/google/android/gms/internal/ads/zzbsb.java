package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.res.Resources;
import android.text.TextUtils;
import cn.trinea.android.developertools.R;
import g.dwe;
import g.esy;
import g.ti;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzbsb extends zzbsk {

    /* renamed from: a, reason: collision with root package name */
    public final String f4945a;

    /* renamed from: b, reason: collision with root package name */
    public final Activity f4946b;

    /* renamed from: c, reason: collision with root package name */
    public final String f4947c;

    /* renamed from: d, reason: collision with root package name */
    public final long f4948d;

    /* renamed from: e, reason: collision with root package name */
    public final String f4949e;

    /* renamed from: f, reason: collision with root package name */
    public final Map f4950f;

    /* renamed from: g, reason: collision with root package name */
    public final long f4951g;

    /* JADX WARN: Removed duplicated region for block: B:9:0x0041 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzbsb(zzcfk zzcfkVar, Map map) {
        super(zzcfkVar, "createCalendarEvent");
        long parseLong;
        String str;
        this.f4950f = map;
        this.f4946b = zzcfkVar.zzi();
        this.f4947c = h("description");
        this.f4945a = h("summary");
        String str2 = (String) map.get("start_ticks");
        long j = -1;
        if (str2 != null) {
            try {
                parseLong = Long.parseLong(str2);
            } catch (NumberFormatException unused) {
            }
            this.f4948d = parseLong;
            str = (String) this.f4950f.get("end_ticks");
            if (str != null) {
                try {
                    j = Long.parseLong(str);
                } catch (NumberFormatException unused2) {
                }
            }
            this.f4951g = j;
            this.f4949e = h("location");
        }
        parseLong = -1;
        this.f4948d = parseLong;
        str = (String) this.f4950f.get("end_ticks");
        if (str != null) {
        }
        this.f4951g = j;
        this.f4949e = h("location");
    }

    public final String h(String str) {
        Map map = this.f4950f;
        return TextUtils.isEmpty((CharSequence) map.get(str)) ? "" : (String) map.get(str);
    }

    public final void zzc() {
        Activity activity = this.f4946b;
        if (activity == null) {
            zzh("Activity context is not available.");
            return;
        }
        ti tiVar = ti.f20033a;
        esy esyVar = tiVar.z;
        if (!new zzbbv(activity).zzb()) {
            zzh("This feature is not available on the device.");
            return;
        }
        AlertDialog.Builder af = esy.af(activity);
        Resources zze = tiVar.f20034ab.zze();
        af.setTitle(zze != null ? zze.getString(R.string.s5) : "Create calendar event");
        af.setMessage(zze != null ? zze.getString(R.string.s6) : "Allow Ad to create a calendar event?");
        af.setPositiveButton(zze != null ? zze.getString(R.string.s3) : "Accept", new dwe(this, 0));
        af.setNegativeButton(zze != null ? zze.getString(R.string.s4) : "Decline", new dwe(this, 1));
        af.create().show();
    }
}
