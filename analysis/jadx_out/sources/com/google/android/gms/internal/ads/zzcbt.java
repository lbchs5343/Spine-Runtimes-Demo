package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.utils.AVErrorInfo;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.agd;
import g.awf;
import g.ckd;
import g.cxg;
import g.edt;
import g.esy;
import g.gfx;
import g.ti;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class zzcbt extends FrameLayout implements zzcbk {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f5146a = 0;

    /* renamed from: b, reason: collision with root package name */
    public boolean f5147b;

    /* renamed from: c, reason: collision with root package name */
    public Bitmap f5148c;

    /* renamed from: d, reason: collision with root package name */
    public final zzcbl f5149d;

    /* renamed from: e, reason: collision with root package name */
    public String[] f5150e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f5151f;

    /* renamed from: g, reason: collision with root package name */
    public final View f5152g;
    public long h;
    public boolean i;
    public final zzbdc j;
    public final g.z k;
    public boolean l;
    public final zzccf m;
    public boolean n;
    public final FrameLayout o;
    public String p;
    public final ImageView q;
    public long r;
    public final long s;

    public zzcbt(Context context, zzccf zzccfVar, int i, boolean z, zzbdc zzbdcVar, zzcce zzcceVar) {
        super(context);
        zzcbl zzcbjVar;
        zzbdc zzbdcVar2;
        zzcbl zzcblVar;
        this.m = zzccfVar;
        this.j = zzbdcVar;
        FrameLayout frameLayout = new FrameLayout(context);
        this.o = frameLayout;
        addView(frameLayout, new FrameLayout.LayoutParams(-1, -1));
        ckd.k(zzccfVar.zzj());
        zzcbx zzcbxVar = zzccfVar.zzj().f18039a;
        zzccg zzccgVar = new zzccg(context, zzccfVar.zzn(), zzccfVar.zzdi(), zzbdcVar, zzccfVar.zzk());
        if (i == 3) {
            zzcblVar = new zzcez(context, zzccgVar);
            zzbdcVar2 = zzbdcVar;
        } else {
            if (i == 2) {
                zzcbjVar = new zzccx(context, zzccgVar, zzccfVar, z, zzccfVar.zzO().zzi(), zzcceVar);
                zzbdcVar2 = zzbdcVar;
            } else {
                zzbdcVar2 = zzbdcVar;
                zzcbjVar = new zzcbj(context, zzccfVar, z, zzccfVar.zzO().zzi(), zzcceVar, new zzccg(context, zzccfVar.zzn(), zzccfVar.zzdi(), zzbdcVar, zzccfVar.zzk()));
            }
            zzcblVar = zzcbjVar;
        }
        this.f5149d = zzcblVar;
        View view = new View(context);
        this.f5152g = view;
        view.setBackgroundColor(0);
        frameLayout.addView(zzcblVar, new FrameLayout.LayoutParams(-1, -1, 17));
        zzbce zzbceVar = zzbcn.zzP;
        edt edtVar = edt.f15376a;
        if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
            frameLayout.addView(view, new FrameLayout.LayoutParams(-1, -1));
            frameLayout.bringChildToFront(view);
        }
        if (((Boolean) edtVar.f15379d.zza(zzbcn.zzM)).booleanValue()) {
            zzn();
        }
        this.q = new ImageView(context);
        this.s = ((Long) edtVar.f15379d.zza(zzbcn.zzR)).longValue();
        boolean booleanValue = ((Boolean) edtVar.f15379d.zza(zzbcn.zzO)).booleanValue();
        this.i = booleanValue;
        if (zzbdcVar2 != null) {
            zzbdcVar.zzd("spinner_used", true != booleanValue ? "0" : "1");
        }
        this.k = new g.z(this);
        zzcblVar.zzr(this);
    }

    public final void finalize() throws Throwable {
        try {
            this.k.d();
            final zzcbl zzcblVar = this.f5149d;
            if (zzcblVar != null) {
                zzcaj.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcbn
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzcbl.this.zzt();
                    }
                });
            }
        } finally {
            super.finalize();
        }
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(final boolean z) {
        super.onWindowFocusChanged(z);
        g.z zVar = this.k;
        if (z) {
            zVar.f20376a = false;
            gfx gfxVar = esy.f16117a;
            gfxVar.removeCallbacks(zVar);
            gfxVar.postDelayed(zVar, 250L);
        } else {
            zVar.d();
            this.r = this.h;
        }
        esy.f16117a.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcbp
            @Override // java.lang.Runnable
            public final void run() {
                zzcbt zzcbtVar = zzcbt.this;
                boolean z2 = z;
                zzcbtVar.getClass();
                zzcbtVar.u("windowFocusChanged", "hasWindowFocus", String.valueOf(z2));
            }
        });
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.zzcbk
    public final void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        boolean z = false;
        g.z zVar = this.k;
        if (i == 0) {
            zVar.f20376a = false;
            gfx gfxVar = esy.f16117a;
            gfxVar.removeCallbacks(zVar);
            gfxVar.postDelayed(zVar, 250L);
            z = true;
        } else {
            zVar.d();
            this.r = this.h;
        }
        esy.f16117a.post(new g.z(this, z));
    }

    public final void t() {
        zzccf zzccfVar = this.m;
        if (zzccfVar.zzi() == null || !this.n || this.f5151f) {
            return;
        }
        zzccfVar.zzi().getWindow().clearFlags(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
        this.n = false;
    }

    public final void u(String str, String... strArr) {
        HashMap hashMap = new HashMap();
        Integer zzl = zzl();
        if (zzl != null) {
            hashMap.put("playerId", zzl.toString());
        }
        hashMap.put("event", str);
        String str2 = null;
        for (String str3 : strArr) {
            if (str2 == null) {
                str2 = str3;
            } else {
                hashMap.put(str2, str3);
                str2 = null;
            }
        }
        this.m.zzd("onVideoEvent", hashMap);
    }

    public final void v() {
        zzcbl zzcblVar = this.f5149d;
        if (zzcblVar == null) {
            return;
        }
        long zza = zzcblVar.zza();
        if (this.h == zza || zza <= 0) {
            return;
        }
        float f2 = zza / 1000.0f;
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzbW)).booleanValue()) {
            String valueOf = String.valueOf(f2);
            String valueOf2 = String.valueOf(zzcblVar.zzh());
            String valueOf3 = String.valueOf(zzcblVar.zzf());
            String valueOf4 = String.valueOf(zzcblVar.zzg());
            String valueOf5 = String.valueOf(zzcblVar.zzb());
            ti.f20033a.v.getClass();
            u("timeupdate", "time", valueOf, "totalBytes", valueOf2, "qoeCachedBytes", valueOf3, "qoeLoadedBytes", valueOf4, "droppedFrames", valueOf5, "reportTime", String.valueOf(System.currentTimeMillis()));
        } else {
            u("timeupdate", "time", String.valueOf(f2));
        }
        this.h = zza;
    }

    public final void zzA(int i) {
        zzcbl zzcblVar = this.f5149d;
        if (zzcblVar == null) {
            return;
        }
        zzcblVar.zzz(i);
    }

    public final void zzB(int i) {
        zzcbl zzcblVar = this.f5149d;
        if (zzcblVar == null) {
            return;
        }
        zzcblVar.zzA(i);
    }

    public final void zzC(int i) {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzP)).booleanValue()) {
            this.o.setBackgroundColor(i);
            this.f5152g.setBackgroundColor(i);
        }
    }

    public final void zzD(int i) {
        zzcbl zzcblVar = this.f5149d;
        if (zzcblVar == null) {
            return;
        }
        zzcblVar.zzB(i);
    }

    public final void zzE(String str, String[] strArr) {
        this.p = str;
        this.f5150e = strArr;
    }

    public final void zzF(int i, int i2, int i3, int i4) {
        if (agd.h()) {
            StringBuilder z = awf.z(i, i2, "Set video bounds to x:", ";y:", ";w:");
            z.append(i3);
            z.append(";h:");
            z.append(i4);
            agd.e(z.toString());
        }
        if (i3 == 0 || i4 == 0) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, i4);
        layoutParams.setMargins(i, i2, 0, 0);
        this.o.setLayoutParams(layoutParams);
        requestLayout();
    }

    public final void zzG(float f2) {
        zzcbl zzcblVar = this.f5149d;
        if (zzcblVar == null) {
            return;
        }
        zzcblVar.w.zze(f2);
        zzcblVar.zzn();
    }

    public final void zzH(float f2, float f3) {
        zzcbl zzcblVar = this.f5149d;
        if (zzcblVar != null) {
            zzcblVar.zzu(f2, f3);
        }
    }

    public final void zzI() {
        zzcbl zzcblVar = this.f5149d;
        if (zzcblVar == null) {
            return;
        }
        zzcblVar.w.zzd(false);
        zzcblVar.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzcbk
    public final void zza() {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzbY)).booleanValue()) {
            this.k.d();
        }
        u("ended", new String[0]);
        t();
    }

    @Override // com.google.android.gms.internal.ads.zzcbk
    public final void zzb(String str, String str2) {
        u(AVErrorInfo.ERROR, "what", str, "extra", str2);
    }

    @Override // com.google.android.gms.internal.ads.zzcbk
    public final void zzc(String str, String str2) {
        u("exception", "what", "ExoPlayerAdapter exception", "extra", str2);
    }

    @Override // com.google.android.gms.internal.ads.zzcbk
    public final void zzd() {
        u("pause", new String[0]);
        t();
        this.f5147b = false;
    }

    @Override // com.google.android.gms.internal.ads.zzcbk
    public final void zze() {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzbY)).booleanValue()) {
            g.z zVar = this.k;
            zVar.f20376a = false;
            gfx gfxVar = esy.f16117a;
            gfxVar.removeCallbacks(zVar);
            gfxVar.postDelayed(zVar, 250L);
        }
        zzccf zzccfVar = this.m;
        if (zzccfVar.zzi() != null && !this.n) {
            boolean z = (zzccfVar.zzi().getWindow().getAttributes().flags & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) != 0;
            this.f5151f = z;
            if (!z) {
                zzccfVar.zzi().getWindow().addFlags(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
                this.n = true;
            }
        }
        this.f5147b = true;
    }

    @Override // com.google.android.gms.internal.ads.zzcbk
    public final void zzf() {
        zzcbl zzcblVar = this.f5149d;
        if (zzcblVar != null && this.r == 0) {
            u("canplaythrough", MediationConstant.EXTRA_DURATION, String.valueOf(zzcblVar.zzc() / 1000.0f), "videoWidth", String.valueOf(zzcblVar.zze()), "videoHeight", String.valueOf(zzcblVar.zzd()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbk
    public final void zzg() {
        this.f5152g.setVisibility(4);
        esy.f16117a.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcbo
            @Override // java.lang.Runnable
            public final void run() {
                zzcbt.this.u("firstFrameRendered", new String[0]);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcbk
    public final void zzh() {
        g.z zVar = this.k;
        zVar.f20376a = false;
        gfx gfxVar = esy.f16117a;
        gfxVar.removeCallbacks(zVar);
        gfxVar.postDelayed(zVar, 250L);
        gfxVar.post(new cxg(this, 0));
    }

    @Override // com.google.android.gms.internal.ads.zzcbk
    public final void zzi() {
        if (this.l && this.f5148c != null) {
            ImageView imageView = this.q;
            if (imageView.getParent() == null) {
                imageView.setImageBitmap(this.f5148c);
                imageView.invalidate();
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                FrameLayout frameLayout = this.o;
                frameLayout.addView(imageView, layoutParams);
                frameLayout.bringChildToFront(imageView);
            }
        }
        this.k.d();
        this.r = this.h;
        esy.f16117a.post(new cxg(this, 1));
    }

    @Override // com.google.android.gms.internal.ads.zzcbk
    public final void zzj(int i, int i2) {
        if (this.i) {
            zzbce zzbceVar = zzbcn.zzQ;
            edt edtVar = edt.f15376a;
            int max = Math.max(i / ((Integer) edtVar.f15379d.zza(zzbceVar)).intValue(), 1);
            int max2 = Math.max(i2 / ((Integer) edtVar.f15379d.zza(zzbceVar)).intValue(), 1);
            Bitmap bitmap = this.f5148c;
            if (bitmap != null && bitmap.getWidth() == max && this.f5148c.getHeight() == max2) {
                return;
            }
            this.f5148c = Bitmap.createBitmap(max, max2, Bitmap.Config.ARGB_8888);
            this.l = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbk
    public final void zzk() {
        if (this.f5147b) {
            ImageView imageView = this.q;
            if (imageView.getParent() != null) {
                this.o.removeView(imageView);
            }
        }
        zzcbl zzcblVar = this.f5149d;
        if (zzcblVar == null || this.f5148c == null) {
            return;
        }
        ti tiVar = ti.f20033a;
        tiVar.v.getClass();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (zzcblVar.getBitmap(this.f5148c) != null) {
            this.l = true;
        }
        tiVar.v.getClass();
        long elapsedRealtime2 = SystemClock.elapsedRealtime() - elapsedRealtime;
        if (agd.h()) {
            agd.e("Spinner frame grab took " + elapsedRealtime2 + "ms");
        }
        if (elapsedRealtime2 > this.s) {
            agd.b("Spinner frame grab crossed jank threshold! Suspending spinner.");
            this.i = false;
            this.f5148c = null;
            zzbdc zzbdcVar = this.j;
            if (zzbdcVar != null) {
                zzbdcVar.zzd("spinner_jank", Long.toString(elapsedRealtime2));
            }
        }
    }

    public final Integer zzl() {
        zzcbl zzcblVar = this.f5149d;
        if (zzcblVar != null) {
            return zzcblVar.zzw();
        }
        return null;
    }

    public final void zzn() {
        zzcbl zzcblVar = this.f5149d;
        if (zzcblVar == null) {
            return;
        }
        TextView textView = new TextView(zzcblVar.getContext());
        Resources zze = ti.f20033a.f20034ab.zze();
        textView.setText(String.valueOf(zze == null ? "AdMob - " : zze.getString(R.string.watermark_label_prefix)).concat(zzcblVar.zzj()));
        textView.setTextColor(-65536);
        textView.setBackgroundColor(-256);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2, 17);
        FrameLayout frameLayout = this.o;
        frameLayout.addView(textView, layoutParams);
        frameLayout.bringChildToFront(textView);
    }

    public final void zzo() {
        this.k.d();
        zzcbl zzcblVar = this.f5149d;
        if (zzcblVar != null) {
            zzcblVar.zzt();
        }
        t();
    }

    public final void zzr(Integer num) {
        zzcbl zzcblVar = this.f5149d;
        if (zzcblVar == null) {
            return;
        }
        if (TextUtils.isEmpty(this.p)) {
            u("no_src", new String[0]);
        } else {
            zzcblVar.zzC(this.p, this.f5150e, num);
        }
    }

    public final void zzs() {
        zzcbl zzcblVar = this.f5149d;
        if (zzcblVar == null) {
            return;
        }
        zzcblVar.w.zzd(true);
        zzcblVar.zzn();
    }

    public final void zzu() {
        zzcbl zzcblVar = this.f5149d;
        if (zzcblVar == null) {
            return;
        }
        zzcblVar.zzo();
    }

    public final void zzv() {
        zzcbl zzcblVar = this.f5149d;
        if (zzcblVar == null) {
            return;
        }
        zzcblVar.zzp();
    }

    public final void zzw(int i) {
        zzcbl zzcblVar = this.f5149d;
        if (zzcblVar == null) {
            return;
        }
        zzcblVar.zzq(i);
    }

    public final void zzx(MotionEvent motionEvent) {
        zzcbl zzcblVar = this.f5149d;
        if (zzcblVar == null) {
            return;
        }
        zzcblVar.dispatchTouchEvent(motionEvent);
    }

    public final void zzy(int i) {
        zzcbl zzcblVar = this.f5149d;
        if (zzcblVar == null) {
            return;
        }
        zzcblVar.zzx(i);
    }

    public final void zzz(int i) {
        zzcbl zzcblVar = this.f5149d;
        if (zzcblVar == null) {
            return;
        }
        zzcblVar.zzy(i);
    }
}
