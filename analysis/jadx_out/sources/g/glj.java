package g;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class glj implements ghu {

    /* renamed from: d, reason: collision with root package name */
    public int f18345d;

    /* renamed from: e, reason: collision with root package name */
    public int f18346e;

    /* renamed from: f, reason: collision with root package name */
    public final ctw f18347f;

    /* renamed from: g, reason: collision with root package name */
    public gqc f18348g;
    public esi h;
    public int i;

    public glj(ctw ctwVar) {
        this.f18347f = ctwVar;
    }

    @Override // g.ghu
    public final int a() {
        return this.i;
    }

    @Override // g.ghu
    public final atc b() {
        return this.f18348g;
    }

    @Override // g.ghu
    public final ful c() {
        return this.h;
    }

    @Override // g.ghu
    public final List getAttributes() {
        List list;
        ArrayList arrayList = new ArrayList();
        int i = this.f18345d;
        ctw ctwVar = this.f18347f;
        lt.b(null, arrayList, ctwVar.t(i));
        int i2 = this.f18346e;
        dsg dsgVar = (dsg) ctwVar.f13504f;
        if (i2 == 0) {
            list = Collections.EMPTY_LIST;
        } else {
            dsgVar.m(i2);
            ByteBuffer byteBuffer = (ByteBuffer) dsgVar.f14704a;
            int i3 = byteBuffer.getInt();
            if (i3 == 0) {
                list = Collections.EMPTY_LIST;
            } else {
                ArrayList arrayList2 = new ArrayList(i3);
                for (int i4 = 0; i4 < i3; i4++) {
                    int i5 = byteBuffer.getInt();
                    int position = byteBuffer.position();
                    arrayList2.add(ctwVar.t(i5));
                    dsgVar.m(position);
                }
                list = arrayList2;
            }
        }
        acr.bj(gca.b(list), arrayList);
        return arrayList;
    }

    public final String toString() {
        return this.h.toString();
    }
}
