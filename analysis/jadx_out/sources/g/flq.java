package g;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class flq implements eok {

    /* renamed from: b, reason: collision with root package name */
    public String f17000b;

    /* renamed from: c, reason: collision with root package name */
    public int f17001c;

    /* renamed from: e, reason: collision with root package name */
    public final ctw f17002e;

    /* renamed from: f, reason: collision with root package name */
    public int f17003f;

    /* renamed from: g, reason: collision with root package name */
    public String f17004g;
    public String h;
    public ghr i;

    public flq(ctw ctwVar) {
        this.f17002e = ctwVar;
    }

    @Override // g.eok
    public final int a() {
        return this.f17001c;
    }

    @Override // g.cba
    public final String d() {
        return this.f17004g;
    }

    @Override // g.eok
    public final List getAttributes() {
        ArrayList arrayList = new ArrayList(2);
        acr.bj(this.i, arrayList);
        ctw ctwVar = this.f17002e;
        if (ctwVar == null) {
            throw new NullPointerException("Annotation parser not initialized");
        }
        lt.b(null, arrayList, ctwVar.t(this.f17003f));
        return arrayList;
    }

    @Override // g.cba
    public final String getName() {
        return this.f17000b;
    }

    @Override // g.cba
    public final String getType() {
        return this.h;
    }

    public final String toString() {
        return this.f17004g + "->" + this.f17000b + ":" + this.h;
    }
}
