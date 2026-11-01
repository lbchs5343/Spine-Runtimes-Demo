package g;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.PointF;
import android.net.Uri;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzcaj;
import com.google.android.gms.internal.ads.zzdvg;
import com.google.android.gms.internal.ads.zzdvk;
import com.google.android.gms.internal.ads.zzftd;
import com.google.android.gms.internal.ads.zzges;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public final class gfk {

    /* renamed from: a, reason: collision with root package name */
    public final int f18032a;

    /* renamed from: b, reason: collision with root package name */
    public final zzftd f18033b;

    /* renamed from: c, reason: collision with root package name */
    public String f18034c;

    /* renamed from: e, reason: collision with root package name */
    public String f18036e;

    /* renamed from: f, reason: collision with root package name */
    public final Context f18037f;

    /* renamed from: g, reason: collision with root package name */
    public String f18038g;
    public PointF h;
    public final zzdvk i;
    public PointF j;
    public String k;
    public int l = 0;

    /* renamed from: d, reason: collision with root package name */
    public final fyu f18035d = new fyu(this, 2);

    public gfk(Context context) {
        this.f18037f = context;
        this.f18032a = ViewConfiguration.get(context).getScaledTouchSlop();
        ti tiVar = ti.f20033a;
        tiVar.q.f();
        this.f18033b = (zzftd) tiVar.q.f16940d;
        this.i = tiVar.f20040g.f11743g;
    }

    public static final int m(ArrayList arrayList, String str, boolean z) {
        if (!z) {
            return -1;
        }
        arrayList.add(str);
        return arrayList.size() - 1;
    }

    public final boolean n(float f2, float f3, float f4, float f5) {
        float abs = Math.abs(this.h.x - f2);
        int i = this.f18032a;
        return abs < ((float) i) && Math.abs(this.h.y - f3) < ((float) i) && Math.abs(this.j.x - f4) < ((float) i) && Math.abs(this.j.y - f5) < ((float) i);
    }

    public final void o(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        int historySize = motionEvent.getHistorySize();
        int pointerCount = motionEvent.getPointerCount();
        if (actionMasked == 0) {
            this.l = 0;
            this.h = new PointF(motionEvent.getX(0), motionEvent.getY(0));
            return;
        }
        int i = this.l;
        if (i == -1) {
            return;
        }
        fyu fyuVar = this.f18035d;
        zzftd zzftdVar = this.f18033b;
        if (i == 0) {
            if (actionMasked == 5) {
                this.l = 5;
                this.j = new PointF(motionEvent.getX(1), motionEvent.getY(1));
                zzftdVar.postDelayed(fyuVar, ((Long) edt.f15376a.f15379d.zza(zzbcn.zzeI)).longValue());
                return;
            }
            return;
        }
        if (i == 5) {
            if (pointerCount == 2) {
                if (actionMasked != 2) {
                    return;
                }
                boolean z = false;
                for (int i2 = 0; i2 < historySize; i2++) {
                    z |= !n(motionEvent.getHistoricalX(0, i2), motionEvent.getHistoricalY(0, i2), motionEvent.getHistoricalX(1, i2), motionEvent.getHistoricalY(1, i2));
                }
                if (n(motionEvent.getX(), motionEvent.getY(), motionEvent.getX(1), motionEvent.getY(1)) && !z) {
                    return;
                }
            }
            this.l = -1;
            zzftdVar.removeCallbacks(fyuVar);
        }
    }

    public final void p() {
        String str;
        Context context = this.f18037f;
        try {
            if (!(context instanceof Activity)) {
                agd.k("Can not create dialog without Activity Context");
                return;
            }
            ti tiVar = ti.f20033a;
            bkm bkmVar = tiVar.f20040g;
            synchronized (bkmVar.f11739c) {
                str = bkmVar.f11742f;
            }
            String str2 = "Creative preview (enabled)";
            if (true == TextUtils.isEmpty(str)) {
                str2 = "Creative preview";
            }
            String str3 = true != tiVar.f20040g.j() ? "Troubleshooting" : "Troubleshooting (enabled)";
            ArrayList arrayList = new ArrayList();
            final int m = m(arrayList, "Ad information", true);
            final int m2 = m(arrayList, str2, true);
            final int m3 = m(arrayList, str3, true);
            boolean booleanValue = ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zziO)).booleanValue();
            final int m4 = m(arrayList, "Open ad inspector", booleanValue);
            final int m5 = m(arrayList, "Ad inspector settings", booleanValue);
            AlertDialog.Builder af = esy.af(context);
            af.setTitle("Select a debug mode").setItems((CharSequence[]) arrayList.toArray(new String[0]), new DialogInterface.OnClickListener() { // from class: g.dyc
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    final gfk gfkVar = gfk.this;
                    zzdvk zzdvkVar = gfkVar.i;
                    Context context2 = gfkVar.f18037f;
                    if (i != m) {
                        if (i == m2) {
                            agd.c("Debug mode [Creative Preview] selected.");
                            zzcaj.zza.execute(new fyu(gfkVar, 3));
                            return;
                        }
                        if (i == m3) {
                            agd.c("Debug mode [Troubleshooting] selected.");
                            zzcaj.zza.execute(new fyu(gfkVar, 1));
                            return;
                        }
                        if (i == m4) {
                            final zzges zzgesVar = zzcaj.zze;
                            zzges zzgesVar2 = zzcaj.zza;
                            if (zzdvkVar.zzq()) {
                                zzgesVar.execute(new fyu(gfkVar, 6));
                                return;
                            } else {
                                final int i2 = 0;
                                zzgesVar2.execute(new Runnable() { // from class: g.ewc
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        switch (i2) {
                                            case 0:
                                                ti tiVar2 = ti.f20033a;
                                                bkm bkmVar2 = tiVar2.f20040g;
                                                gfk gfkVar2 = gfkVar;
                                                Context context3 = gfkVar2.f18037f;
                                                if (!bkmVar2.n(context3, gfkVar2.f18034c, gfkVar2.f18036e)) {
                                                    tiVar2.f20040g.p(context3, gfkVar2.f18034c, gfkVar2.f18036e);
                                                    break;
                                                } else {
                                                    zzgesVar.execute(new fyu(gfkVar2, 4));
                                                    break;
                                                }
                                            default:
                                                ti tiVar3 = ti.f20033a;
                                                bkm bkmVar3 = tiVar3.f20040g;
                                                gfk gfkVar3 = gfkVar;
                                                Context context4 = gfkVar3.f18037f;
                                                if (!bkmVar3.n(context4, gfkVar3.f18034c, gfkVar3.f18036e)) {
                                                    tiVar3.f20040g.p(context4, gfkVar3.f18034c, gfkVar3.f18036e);
                                                    break;
                                                } else {
                                                    zzgesVar.execute(new fyu(gfkVar3, 5));
                                                    break;
                                                }
                                        }
                                    }
                                });
                                return;
                            }
                        }
                        if (i == m5) {
                            final zzges zzgesVar3 = zzcaj.zze;
                            zzges zzgesVar4 = zzcaj.zza;
                            if (zzdvkVar.zzq()) {
                                zzgesVar3.execute(new fyu(gfkVar, 0));
                                return;
                            } else {
                                final int i3 = 1;
                                zzgesVar4.execute(new Runnable() { // from class: g.ewc
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        switch (i3) {
                                            case 0:
                                                ti tiVar2 = ti.f20033a;
                                                bkm bkmVar2 = tiVar2.f20040g;
                                                gfk gfkVar2 = gfkVar;
                                                Context context3 = gfkVar2.f18037f;
                                                if (!bkmVar2.n(context3, gfkVar2.f18034c, gfkVar2.f18036e)) {
                                                    tiVar2.f20040g.p(context3, gfkVar2.f18034c, gfkVar2.f18036e);
                                                    break;
                                                } else {
                                                    zzgesVar3.execute(new fyu(gfkVar2, 4));
                                                    break;
                                                }
                                            default:
                                                ti tiVar3 = ti.f20033a;
                                                bkm bkmVar3 = tiVar3.f20040g;
                                                gfk gfkVar3 = gfkVar;
                                                Context context4 = gfkVar3.f18037f;
                                                if (!bkmVar3.n(context4, gfkVar3.f18034c, gfkVar3.f18036e)) {
                                                    tiVar3.f20040g.p(context4, gfkVar3.f18034c, gfkVar3.f18036e);
                                                    break;
                                                } else {
                                                    zzgesVar3.execute(new fyu(gfkVar3, 5));
                                                    break;
                                                }
                                        }
                                    }
                                });
                                return;
                            }
                        }
                        return;
                    }
                    if (!(context2 instanceof Activity)) {
                        agd.k("Can not create dialog without Activity Context");
                        return;
                    }
                    String str4 = gfkVar.k;
                    String str5 = "No debug information";
                    if (!TextUtils.isEmpty(str4)) {
                        Uri build = new Uri.Builder().encodedQuery(str4.replaceAll("\\+", "%20")).build();
                        StringBuilder sb = new StringBuilder();
                        esy esyVar = ti.f20033a.z;
                        HashMap u = esy.u(build);
                        for (String str6 : u.keySet()) {
                            sb.append(str6);
                            sb.append(" = ");
                            sb.append((String) u.get(str6));
                            sb.append("\n\n");
                        }
                        String trim = sb.toString().trim();
                        if (!TextUtils.isEmpty(trim)) {
                            str5 = trim;
                        }
                    }
                    esy esyVar2 = ti.f20033a.z;
                    AlertDialog.Builder af2 = esy.af(context2);
                    af2.setMessage(str5);
                    af2.setTitle("Ad Information");
                    af2.setPositiveButton("Share", new dtm(gfkVar, 4, str5));
                    af2.setNegativeButton("Close", new efa(3));
                    af2.create().show();
                }
            });
            af.create().show();
        } catch (WindowManager.BadTokenException unused) {
            agd.h();
        }
    }

    public final void q(Context context) {
        ArrayList arrayList = new ArrayList();
        int m = m(arrayList, "None", true);
        final int m2 = m(arrayList, "Shake", true);
        final int m3 = m(arrayList, "Flick", true);
        int ordinal = this.i.zza().ordinal();
        final int i = ordinal != 1 ? ordinal != 2 ? m : m3 : m2;
        esy esyVar = ti.f20033a.z;
        AlertDialog.Builder af = esy.af(context);
        final AtomicInteger atomicInteger = new AtomicInteger(i);
        af.setTitle("Setup gesture");
        af.setSingleChoiceItems((CharSequence[]) arrayList.toArray(new String[0]), i, new fgw(5, atomicInteger));
        af.setNegativeButton("Dismiss", new fgw(6, this));
        af.setPositiveButton("Save", new DialogInterface.OnClickListener() { // from class: g.bzi
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                gfk gfkVar = gfk.this;
                zzdvk zzdvkVar = gfkVar.i;
                AtomicInteger atomicInteger2 = atomicInteger;
                if (atomicInteger2.get() != i) {
                    if (atomicInteger2.get() == m2) {
                        zzdvkVar.zzm(zzdvg.zzb);
                    } else if (atomicInteger2.get() == m3) {
                        zzdvkVar.zzm(zzdvg.zzc);
                    } else {
                        zzdvkVar.zzm(zzdvg.zza);
                    }
                }
                gfkVar.p();
            }
        });
        af.setOnCancelListener(new fye(1, this));
        af.create().show();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(100);
        sb.append("{Dialog: ");
        sb.append(this.k);
        sb.append(",DebugSignal: ");
        sb.append(this.f18038g);
        sb.append(",AFMA Version: ");
        sb.append(this.f18036e);
        sb.append(",Ad Unit ID: ");
        return awf.ad(sb, this.f18034c, "}");
    }
}
