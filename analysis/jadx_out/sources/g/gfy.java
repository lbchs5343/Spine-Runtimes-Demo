package g;

import android.graphics.Color;

/* loaded from: classes.dex */
public final class gfy implements fyj {

    /* renamed from: a, reason: collision with root package name */
    public final bsb f18060a;

    /* renamed from: b, reason: collision with root package name */
    public final bsb f18061b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f18062c;

    /* renamed from: d, reason: collision with root package name */
    public final bsb f18063d;

    /* renamed from: e, reason: collision with root package name */
    public final dph f18064e;

    /* renamed from: f, reason: collision with root package name */
    public final bsb f18065f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f18066g = true;

    public gfy(fyj fyjVar, grq grqVar, fzn fznVar) {
        this.f18062c = fyjVar;
        cej dq = ((dlz) fznVar.h).dq();
        this.f18064e = (dph) dq;
        dq.l(this);
        grqVar.bg(dq);
        cej dq2 = ((cnc) fznVar.f17729d).dq();
        this.f18065f = (bsb) dq2;
        dq2.l(this);
        grqVar.bg(dq2);
        cej dq3 = ((cnc) fznVar.f17730e).dq();
        this.f18060a = (bsb) dq3;
        dq3.l(this);
        grqVar.bg(dq3);
        cej dq4 = ((cnc) fznVar.f17731f).dq();
        this.f18061b = (bsb) dq4;
        dq4.l(this);
        grqVar.bg(dq4);
        cej dq5 = ((cnc) fznVar.i).dq();
        this.f18063d = (bsb) dq5;
        dq5.l(this);
        grqVar.bg(dq5);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [g.fyj, java.lang.Object] */
    @Override // g.fyj
    public final void dq() {
        this.f18066g = true;
        this.f18062c.dq();
    }

    public final void h(gee geeVar) {
        if (this.f18066g) {
            this.f18066g = false;
            double floatValue = ((Float) this.f18060a.m()).floatValue() * 0.017453292519943295d;
            float floatValue2 = ((Float) this.f18061b.m()).floatValue();
            float sin = ((float) Math.sin(floatValue)) * floatValue2;
            float cos = ((float) Math.cos(floatValue + 3.141592653589793d)) * floatValue2;
            int intValue = ((Integer) this.f18064e.m()).intValue();
            geeVar.setShadowLayer(((Float) this.f18063d.m()).floatValue(), sin, cos, Color.argb(Math.round(((Float) this.f18065f.m()).floatValue()), Color.red(intValue), Color.green(intValue), Color.blue(intValue)));
        }
    }
}
