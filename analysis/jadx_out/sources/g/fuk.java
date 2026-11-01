package g;

import android.adservices.measurement.MeasurementManager;
import android.content.Context;
import android.net.Uri;
import android.view.InputEvent;

/* loaded from: classes.dex */
public final class fuk {

    /* renamed from: a, reason: collision with root package name */
    public final MeasurementManager f17434a;

    public fuk(Context context) {
        Object systemService;
        bff.p(context, "context");
        systemService = context.getSystemService((Class<Object>) fvr.c());
        bff.e(systemService, "context.getSystemService…:class.java\n            )");
        this.f17434a = fvr.f(systemService);
    }

    public Object b(Uri uri, bdp<? super dgi> bdpVar) {
        gsn gsnVar = new gsn(1, awt.ab(bdpVar));
        gsnVar.ac();
        this.f17434a.registerTrigger(uri, new xh(1), new azf(gsnVar));
        Object z = gsnVar.z();
        return z == cxr.COROUTINE_SUSPENDED ? z : dgi.f14134a;
    }

    public Object c(hcg hcgVar, bdp<? super dgi> bdpVar) {
        new gsn(1, awt.ab(bdpVar)).ac();
        fvr.w();
        throw null;
    }

    public Object d(ach achVar, bdp<? super dgi> bdpVar) {
        new gsn(1, awt.ab(bdpVar)).ac();
        fvr.t();
        throw null;
    }

    public Object e(ye yeVar, bdp<? super dgi> bdpVar) {
        new gsn(1, awt.ab(bdpVar)).ac();
        fvr.d();
        throw null;
    }

    public Object f(bdp<? super Integer> bdpVar) {
        gsn gsnVar = new gsn(1, awt.ab(bdpVar));
        gsnVar.ac();
        this.f17434a.getMeasurementApiStatus(new xh(1), new azf(gsnVar));
        return gsnVar.z();
    }

    public Object g(Uri uri, InputEvent inputEvent, bdp<? super dgi> bdpVar) {
        gsn gsnVar = new gsn(1, awt.ab(bdpVar));
        gsnVar.ac();
        this.f17434a.registerSource(uri, inputEvent, new xh(1), new azf(gsnVar));
        Object z = gsnVar.z();
        return z == cxr.COROUTINE_SUSPENDED ? z : dgi.f14134a;
    }
}
