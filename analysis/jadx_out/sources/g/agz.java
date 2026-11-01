package g;

import android.content.ComponentName;
import android.content.Context;

/* loaded from: classes3.dex */
public final class agz implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10201a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ gyy f10202b;

    public /* synthetic */ agz(gyy gyyVar, int i) {
        this.f10201a = i;
        this.f10202b = gyyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f10201a) {
            case 0:
                gyy gyyVar = this.f10202b;
                dbb dbbVar = gyyVar.f19034a;
                Context context = ((cyg) dbbVar.z).v;
                ((cyg) gyyVar.f19034a.z).getClass();
                dbb.o(dbbVar, new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementService"));
                break;
            default:
                dbb dbbVar2 = this.f10202b.f19034a;
                dbbVar2.l = null;
                dbbVar2.p();
                break;
        }
    }
}
