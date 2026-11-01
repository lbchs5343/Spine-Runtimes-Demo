package g;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class czf extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13805a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ c.a.a f13806b;

    public /* synthetic */ czf(c.a.a aVar, int i) {
        this.f13805a = i;
        this.f13806b = aVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        auj c2;
        String str;
        drp drpVar;
        switch (this.f13805a) {
            case 0:
                c.a.a aVar = this.f13806b;
                sd sdVar = aVar.i;
                if (sdVar != null && sdVar.g()) {
                    aVar.i.ak(3);
                    break;
                }
                break;
            default:
                if (intent.getBooleanExtra("alternative_window_event", false) || !erl.bb(this.f13806b, (ejn) intent.getParcelableExtra("accessibility_event_simple"))) {
                    c.a.a aVar2 = this.f13806b;
                    if (aVar2.j) {
                        if (aVar2.ba) {
                            aVar2.ab();
                            if (cro.an(context, "wv_small_window_default", true)) {
                                c.a.a aVar3 = this.f13806b;
                                ctt cttVar = erl.s;
                                if (((cttVar != null && !cttVar.f13493g && cttVar.l()) || ((str = aVar3.bb) != null && ern.h(aVar3, str))) && (drpVar = this.f13806b.r) != null && !drpVar.i && this.f13806b.x(false)) {
                                    this.f13806b.finish();
                                }
                            }
                            this.f13806b.ba = false;
                        }
                        ejn ejnVar = (ejn) intent.getParcelableExtra("accessibility_event_simple");
                        if (ejnVar != null && ejnVar.getEventType() == 32) {
                            String bp = eyt.bp(ejnVar.getPackageName());
                            String bp2 = eyt.bp(ejnVar.getClassName());
                            String bp3 = eyt.bp(ejnVar.getWindowTitle());
                            ejn ejnVar2 = this.f13806b.s;
                            if (ejnVar2 == null || !cux.ah(ejnVar2.getPackageName(), bp) || !cux.ah(this.f13806b.s.getClassName(), bp2) || this.f13806b.s.getEventType() != ejnVar.getEventType()) {
                                this.f13806b.s = ejnVar;
                                if ((!context.getPackageName().equals(bp) || !c.a.a.f374d.equals(bp2)) && (c2 = this.f13806b.f377g.c(bp, true)) != null) {
                                    if (bp != null && !bp.equals(this.f13806b.o)) {
                                        ArrayList arrayList = this.f13806b.m;
                                        String str2 = c2.j;
                                        Drawable l = c2.l(context, true);
                                        bff.p(str2, abn.EXTRA_UA_APP_NAME);
                                        gzr gzrVar = new gzr();
                                        gzrVar.f19065b = str2;
                                        gzrVar.f19066c = bp;
                                        gzrVar.f19064a = l;
                                        arrayList.add(gzrVar);
                                    }
                                    ArrayList arrayList2 = this.f13806b.m;
                                    long currentTimeMillis = System.currentTimeMillis();
                                    bff.p(bp2, "className");
                                    vc vcVar = new vc();
                                    vcVar.f20142b = bp2;
                                    vcVar.f20143c = bp3;
                                    vcVar.f20141a = currentTimeMillis;
                                    arrayList2.add(vcVar);
                                    c.a.a aVar4 = this.f13806b;
                                    aVar4.f375e.h(aVar4.m);
                                    this.f13806b.f375e.notifyDataSetChanged();
                                    this.f13806b.o = bp;
                                    break;
                                }
                            }
                        }
                    }
                }
                break;
        }
    }
}
