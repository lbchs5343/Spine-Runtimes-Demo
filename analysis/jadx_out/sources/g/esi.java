package g;

import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class esi implements ful {

    /* renamed from: c, reason: collision with root package name */
    public String f16083c;

    /* renamed from: d, reason: collision with root package name */
    public List f16084d;

    /* renamed from: e, reason: collision with root package name */
    public int f16085e;

    /* renamed from: f, reason: collision with root package name */
    public int f16086f;

    /* renamed from: g, reason: collision with root package name */
    public String f16087g;
    public String h;
    public dsg i;

    @Override // g.fw
    public final List a() {
        return this.f16084d;
    }

    @Override // g.fw
    public final String b() {
        return this.f16083c;
    }

    @Override // g.ful
    public final String getName() {
        return this.f16087g;
    }

    @Override // g.ful
    public final int j() {
        return this.f16085e;
    }

    @Override // g.ful
    public final String l() {
        return this.h;
    }

    @Override // g.ful
    public final void m() {
        List w;
        dsg dsgVar = this.i;
        if (dsgVar != null) {
            ByteBuffer byteBuffer = (ByteBuffer) dsgVar.f14704a;
            int i = this.f16086f;
            asu asuVar = ((eyc) dsgVar.f14705b).f16358a;
            dsgVar.m((i * 8) + asuVar.i);
            int q = dsgVar.q();
            int q2 = dsgVar.q();
            int i2 = byteBuffer.getInt();
            dsgVar.m((q2 * 12) + asuVar.f10770e);
            dsgVar.x(4);
            int i3 = byteBuffer.getInt();
            int i4 = byteBuffer.getInt();
            if (i4 == 0) {
                w = Collections.EMPTY_LIST;
            } else {
                byteBuffer.position(i4);
                w = dsgVar.w();
            }
            this.h = dsgVar.g(q);
            this.f16087g = dsgVar.z(i2);
            this.f16083c = dsgVar.g(i3);
            this.f16084d = w;
            this.i = null;
        }
    }

    public final String toString() {
        if (this.f16087g == null) {
            return Integer.toHexString(this.f16085e);
        }
        return this.h + "->" + this.f16087g + '(' + acr.ay(this.f16084d) + ")" + this.f16083c;
    }
}
