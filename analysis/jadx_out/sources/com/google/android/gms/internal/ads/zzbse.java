package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.graphics.Bitmap;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import g.agd;
import g.cbv;
import g.edt;
import g.esy;
import g.get;
import g.glm;
import g.mx;
import g.ti;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzbse extends zzbsk {

    /* renamed from: a, reason: collision with root package name */
    public int f4952a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f4953b;

    /* renamed from: c, reason: collision with root package name */
    public ImageView f4954c;

    /* renamed from: d, reason: collision with root package name */
    public zzche f4955d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f4956e;

    /* renamed from: f, reason: collision with root package name */
    public final zzcfk f4957f;

    /* renamed from: g, reason: collision with root package name */
    public int f4958g;
    public int h;
    public RelativeLayout i;
    public LinearLayout j;
    public final Activity k;
    public int l;
    public int m;
    public final zzbsl n;
    public ViewGroup o;
    public String p;
    public int q;
    public PopupWindow r;

    static {
        glm glmVar = new glm(7);
        Collections.addAll(glmVar, "top-left", "top-right", "top-center", "center", "bottom-left", "bottom-right", "bottom-center");
        Collections.unmodifiableSet(glmVar);
    }

    public zzbse(zzcfk zzcfkVar, zzbsl zzbslVar) {
        super(zzcfkVar, "resize");
        this.p = "top-right";
        this.f4956e = true;
        this.f4958g = 0;
        this.h = 0;
        this.q = -1;
        this.f4952a = 0;
        this.l = 0;
        this.m = -1;
        this.f4953b = new Object();
        this.f4957f = zzcfkVar;
        this.k = zzcfkVar.zzi();
        this.n = zzbslVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void s(boolean z) {
        zzbce zzbceVar = zzbcn.zzkx;
        edt edtVar = edt.f15376a;
        boolean booleanValue = ((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue();
        zzcfk zzcfkVar = this.f4957f;
        if (booleanValue) {
            this.i.removeView((View) zzcfkVar);
            this.r.dismiss();
        } else {
            this.r.dismiss();
            this.i.removeView((View) zzcfkVar);
        }
        if (((Boolean) edtVar.f15379d.zza(zzbcn.zzky)).booleanValue()) {
            ViewParent parent = ((View) zzcfkVar).getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView((View) zzcfkVar);
            }
        }
        ViewGroup viewGroup = this.o;
        if (viewGroup != null) {
            viewGroup.removeView(this.f4954c);
            if (((Boolean) edtVar.f15379d.zza(zzbcn.zzkz)).booleanValue()) {
                try {
                    this.o.addView((View) zzcfkVar);
                    zzcfkVar.zzaj(this.f4955d);
                } catch (IllegalStateException e2) {
                    agd.f("Unable to add webview back to view hierarchy.", e2);
                }
            } else {
                this.o.addView((View) zzcfkVar);
                zzcfkVar.zzaj(this.f4955d);
            }
        }
        if (z) {
            zzl("default");
            zzbsl zzbslVar = this.n;
            if (zzbslVar != null) {
                zzbslVar.zzb();
            }
        }
        this.r = null;
        this.i = null;
        this.o = null;
        this.j = null;
    }

    public final void zza(final boolean z) {
        synchronized (this.f4953b) {
            try {
                if (this.r != null) {
                    if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkw)).booleanValue() || Looper.getMainLooper().getThread() == Thread.currentThread()) {
                        s(z);
                    } else {
                        zzcaj.zze.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbsc
                            @Override // java.lang.Runnable
                            public final void run() {
                                zzbse.this.s(z);
                            }
                        });
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x02a2, code lost:
    
        zzh("Resize location out of screen or close button is not visible.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x02a8, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzb(Map map) {
        char c2;
        int i;
        char c3;
        int i2;
        int i3;
        int i4;
        int i5;
        synchronized (this.f4953b) {
            try {
                if (this.k == null) {
                    zzh("Not an activity context. Cannot resize.");
                    return;
                }
                if (this.f4957f.zzO() == null) {
                    zzh("Webview is not yet available, size is not set.");
                    return;
                }
                if (this.f4957f.zzO().zzi()) {
                    zzh("Is interstitial. Cannot resize an interstitial.");
                    return;
                }
                if (this.f4957f.zzaF()) {
                    zzh("Cannot resize an expanded banner.");
                    return;
                }
                if (!TextUtils.isEmpty((CharSequence) map.get(MediaFormat.KEY_WIDTH))) {
                    esy esyVar = ti.f20033a.z;
                    this.m = esy.n((String) map.get(MediaFormat.KEY_WIDTH));
                }
                if (!TextUtils.isEmpty((CharSequence) map.get(MediaFormat.KEY_HEIGHT))) {
                    esy esyVar2 = ti.f20033a.z;
                    this.q = esy.n((String) map.get(MediaFormat.KEY_HEIGHT));
                }
                if (!TextUtils.isEmpty((CharSequence) map.get("offsetX"))) {
                    esy esyVar3 = ti.f20033a.z;
                    this.f4952a = esy.n((String) map.get("offsetX"));
                }
                if (!TextUtils.isEmpty((CharSequence) map.get("offsetY"))) {
                    esy esyVar4 = ti.f20033a.z;
                    this.l = esy.n((String) map.get("offsetY"));
                }
                if (!TextUtils.isEmpty((CharSequence) map.get("allowOffscreen"))) {
                    this.f4956e = Boolean.parseBoolean((String) map.get("allowOffscreen"));
                }
                String str = (String) map.get("customClosePosition");
                if (!TextUtils.isEmpty(str)) {
                    this.p = str;
                }
                if (this.m < 0 || this.q < 0) {
                    zzh("Invalid width and height options. Cannot resize.");
                    return;
                }
                Window window = this.k.getWindow();
                if (window != null && window.getDecorView() != null) {
                    esy esyVar5 = ti.f20033a.z;
                    Activity activity = this.k;
                    int[] ae = esy.ae(activity);
                    cbv cbvVar = cbv.f12612a;
                    int[] iArr = {cbvVar.f12615d.s(activity, ae[0]), cbvVar.f12615d.s(activity, ae[1])};
                    int[] r = esy.r(this.k);
                    int i6 = iArr[0];
                    int i7 = iArr[1];
                    int i8 = this.m;
                    int[] iArr2 = null;
                    if (i8 < 50 || i8 > i6) {
                        agd.b("Width is too small or too large.");
                    } else {
                        int i9 = this.q;
                        if (i9 < 50 || i9 > i7) {
                            agd.b("Height is too small or too large.");
                        } else if (i9 == i7 && i8 == i6) {
                            agd.b("Cannot resize to a full-screen ad.");
                        } else if (this.f4956e) {
                            String str2 = this.p;
                            switch (str2.hashCode()) {
                                case -1364013995:
                                    if (str2.equals("center")) {
                                        c3 = 2;
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case -1012429441:
                                    if (str2.equals("top-left")) {
                                        c3 = 0;
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case -655373719:
                                    if (str2.equals("bottom-left")) {
                                        c3 = 3;
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case 1163912186:
                                    if (str2.equals("bottom-right")) {
                                        c3 = 5;
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case 1288627767:
                                    if (str2.equals("bottom-center")) {
                                        c3 = 4;
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case 1755462605:
                                    if (str2.equals("top-center")) {
                                        c3 = 1;
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                default:
                                    c3 = 65535;
                                    break;
                            }
                            if (c3 == 0) {
                                i2 = this.f4958g + this.f4952a;
                                i3 = this.h;
                            } else if (c3 != 1) {
                                if (c3 != 2) {
                                    if (c3 == 3) {
                                        i2 = this.f4958g + this.f4952a;
                                        i5 = this.h;
                                    } else if (c3 == 4) {
                                        i2 = ((this.f4958g + this.f4952a) + (i8 >> 1)) - 25;
                                        i5 = this.h;
                                    } else if (c3 != 5) {
                                        i2 = ((this.f4958g + this.f4952a) + i8) - 50;
                                        i3 = this.h;
                                    } else {
                                        i2 = ((this.f4958g + this.f4952a) + i8) - 50;
                                        i5 = this.h;
                                    }
                                    i4 = ((i5 + this.l) + i9) - 50;
                                } else {
                                    i2 = ((this.f4958g + this.f4952a) + (i8 >> 1)) - 25;
                                    i4 = ((this.h + this.l) + (i9 >> 1)) - 25;
                                }
                                if (i2 >= 0 && i2 + 50 <= i6 && i4 >= r[0] && i4 + 50 <= r[1]) {
                                    iArr2 = new int[]{this.f4958g + this.f4952a, this.h + this.l};
                                }
                            } else {
                                i2 = ((this.f4958g + this.f4952a) + (i8 >> 1)) - 25;
                                i3 = this.h;
                            }
                            i4 = i3 + this.l;
                            if (i2 >= 0) {
                                iArr2 = new int[]{this.f4958g + this.f4952a, this.h + this.l};
                            }
                        } else {
                            Activity activity2 = this.k;
                            int[] ae2 = esy.ae(activity2);
                            int[] iArr3 = {cbvVar.f12615d.s(activity2, ae2[0]), cbvVar.f12615d.s(activity2, ae2[1])};
                            int[] r2 = esy.r(this.k);
                            int i10 = iArr3[0];
                            int i11 = this.f4958g + this.f4952a;
                            int i12 = this.h + this.l;
                            if (i11 < 0) {
                                i = 0;
                            } else {
                                int i13 = this.m;
                                i = i11 + i13 > i10 ? i10 - i13 : i11;
                            }
                            int i14 = r2[0];
                            if (i12 < i14) {
                                i12 = i14;
                            } else {
                                int i15 = this.q;
                                int i16 = i12 + i15;
                                int i17 = r2[1];
                                if (i16 > i17) {
                                    i12 = i17 - i15;
                                }
                            }
                            iArr2 = new int[]{i, i12};
                        }
                    }
                    mx mxVar = cbvVar.f12615d;
                    int k = mx.k(this.k, this.m);
                    int k2 = mx.k(this.k, this.q);
                    ViewParent parent = ((View) this.f4957f).getParent();
                    if (parent == null || !(parent instanceof ViewGroup)) {
                        zzh("Webview is detached, probably in the middle of a resize or expand.");
                        return;
                    }
                    ViewGroup viewGroup = (ViewGroup) parent;
                    viewGroup.removeView((View) this.f4957f);
                    PopupWindow popupWindow = this.r;
                    if (popupWindow == null) {
                        this.o = viewGroup;
                        Object obj = this.f4957f;
                        ((View) obj).setDrawingCacheEnabled(true);
                        Bitmap createBitmap = Bitmap.createBitmap(((View) obj).getDrawingCache());
                        ((View) obj).setDrawingCacheEnabled(false);
                        ImageView imageView = new ImageView(this.k);
                        this.f4954c = imageView;
                        imageView.setImageBitmap(createBitmap);
                        this.f4955d = this.f4957f.zzO();
                        this.o.addView(this.f4954c);
                    } else {
                        popupWindow.dismiss();
                    }
                    RelativeLayout relativeLayout = new RelativeLayout(this.k);
                    this.i = relativeLayout;
                    relativeLayout.setBackgroundColor(0);
                    this.i.setLayoutParams(new ViewGroup.LayoutParams(k, k2));
                    PopupWindow popupWindow2 = new PopupWindow((View) this.i, k, k2, false);
                    this.r = popupWindow2;
                    popupWindow2.setOutsideTouchable(false);
                    this.r.setTouchable(true);
                    this.r.setClippingEnabled(!this.f4956e);
                    this.i.addView((View) this.f4957f, -1, -1);
                    this.j = new LinearLayout(this.k);
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(mx.k(this.k, 50), mx.k(this.k, 50));
                    String str3 = this.p;
                    switch (str3.hashCode()) {
                        case -1364013995:
                            if (str3.equals("center")) {
                                c2 = 2;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case -1012429441:
                            if (str3.equals("top-left")) {
                                c2 = 0;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case -655373719:
                            if (str3.equals("bottom-left")) {
                                c2 = 3;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case 1163912186:
                            if (str3.equals("bottom-right")) {
                                c2 = 5;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case 1288627767:
                            if (str3.equals("bottom-center")) {
                                c2 = 4;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case 1755462605:
                            if (str3.equals("top-center")) {
                                c2 = 1;
                                break;
                            }
                            c2 = 65535;
                            break;
                        default:
                            c2 = 65535;
                            break;
                    }
                    if (c2 == 0) {
                        layoutParams.addRule(10);
                        layoutParams.addRule(9);
                    } else if (c2 == 1) {
                        layoutParams.addRule(10);
                        layoutParams.addRule(14);
                    } else if (c2 == 2) {
                        layoutParams.addRule(13);
                    } else if (c2 == 3) {
                        layoutParams.addRule(12);
                        layoutParams.addRule(9);
                    } else if (c2 == 4) {
                        layoutParams.addRule(12);
                        layoutParams.addRule(14);
                    } else if (c2 != 5) {
                        layoutParams.addRule(10);
                        layoutParams.addRule(11);
                    } else {
                        layoutParams.addRule(12);
                        layoutParams.addRule(11);
                    }
                    this.j.setOnClickListener(new get(16, this));
                    this.j.setContentDescription("Close button");
                    this.i.addView(this.j, layoutParams);
                    try {
                        this.r.showAtLocation(window.getDecorView(), 0, mx.k(this.k, iArr2[0]), mx.k(this.k, iArr2[1]));
                        int i18 = iArr2[0];
                        int i19 = iArr2[1];
                        zzbsl zzbslVar = this.n;
                        if (zzbslVar != null) {
                            zzbslVar.zza(i18, i19, this.m, this.q);
                        }
                        this.f4957f.zzaj(zzche.zzb(k, k2));
                        zzk(iArr2[0], iArr2[1] - esy.r(this.k)[0], this.m, this.q);
                        zzl("resized");
                        return;
                    } catch (RuntimeException e2) {
                        zzh("Cannot show popup window: " + e2.getMessage());
                        this.i.removeView((View) this.f4957f);
                        ViewGroup viewGroup2 = this.o;
                        if (viewGroup2 != null) {
                            viewGroup2.removeView(this.f4954c);
                            this.o.addView((View) this.f4957f);
                            this.f4957f.zzaj(this.f4955d);
                        }
                        return;
                    }
                }
                zzh("Activity context is not ready, cannot get window or decor view.");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzd(int i, int i2, boolean z) {
        synchronized (this.f4953b) {
            this.f4958g = i;
            this.h = i2;
        }
    }

    public final void zze(int i, int i2) {
        this.f4958g = i;
        this.h = i2;
    }

    public final boolean zzf() {
        boolean z;
        synchronized (this.f4953b) {
            z = this.r != null;
        }
        return z;
    }
}
