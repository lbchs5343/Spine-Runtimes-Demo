package g;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class aud {

    /* renamed from: a, reason: collision with root package name */
    public final int f10853a;

    /* renamed from: b, reason: collision with root package name */
    public ant f10854b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayDeque f10855c;

    /* renamed from: d, reason: collision with root package name */
    public final dxs f10856d;

    /* renamed from: f, reason: collision with root package name */
    public boolean f10858f;
    public final dxs j;
    public boolean k;
    public btd m;
    public final int o;
    public ehe h = ehe.f15539a;
    public final dng l = dng.DEFAULT;
    public fvw n = fvw.IDENTITY;

    /* renamed from: e, reason: collision with root package name */
    public final HashMap f10857e = new HashMap();

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f10859g = new ArrayList();
    public final ArrayList i = new ArrayList();

    public aud() {
        btd btdVar = eem.f15396b;
        this.o = 2;
        this.f10853a = 2;
        this.k = true;
        this.m = eem.f15396b;
        this.f10854b = null;
        this.f10858f = true;
        this.j = eem.f15397c;
        this.f10856d = eem.f15395a;
        this.f10855c = new ArrayDeque();
    }

    public final eem p() {
        eam eamVar;
        eam eamVar2;
        ArrayList arrayList = this.f10859g;
        int size = arrayList.size();
        ArrayList arrayList2 = this.i;
        ArrayList arrayList3 = new ArrayList(arrayList2.size() + size + 3);
        arrayList3.addAll(arrayList);
        Collections.reverse(arrayList3);
        ArrayList arrayList4 = new ArrayList(arrayList2);
        Collections.reverse(arrayList4);
        arrayList3.addAll(arrayList4);
        boolean z = ehv.f15564c;
        int i = this.o;
        int i2 = this.f10853a;
        if (i != 2 || i2 != 2) {
            fcf fcfVar = new fcf(acp.f9980a, i, i2);
            eam eamVar3 = foc.j;
            eam eamVar4 = new eam(Date.class, fcfVar, 0);
            if (z) {
                fsx fsxVar = ehv.f15567f;
                fsxVar.getClass();
                eamVar = new eam(fsxVar.f9981b, new fcf(fsxVar, i, i2), 0);
                fsx fsxVar2 = ehv.f15566e;
                fsxVar2.getClass();
                eamVar2 = new eam(fsxVar2.f9981b, new fcf(fsxVar2, i, i2), 0);
            } else {
                eamVar = null;
                eamVar2 = null;
            }
            arrayList3.add(eamVar4);
            if (z) {
                arrayList3.add(eamVar);
                arrayList3.add(eamVar2);
            }
        }
        return new eem(this.h, this.n, new HashMap(this.f10857e), this.k, this.m, this.f10854b, this.f10858f, this.l, new ArrayList(arrayList), new ArrayList(arrayList2), arrayList3, this.j, this.f10856d, new ArrayList(this.f10855c));
    }
}
