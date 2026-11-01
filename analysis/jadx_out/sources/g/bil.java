package g;

import android.graphics.PointF;

/* loaded from: classes.dex */
public final class bil {

    /* renamed from: a, reason: collision with root package name */
    public int f11652a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f11653b;

    /* renamed from: c, reason: collision with root package name */
    public cxw f11654c;

    /* renamed from: d, reason: collision with root package name */
    public PointF f11655d;

    /* renamed from: e, reason: collision with root package name */
    public int f11656e;

    /* renamed from: f, reason: collision with root package name */
    public String f11657f;

    /* renamed from: g, reason: collision with root package name */
    public float f11658g;
    public PointF h;
    public int i;
    public String j;
    public float k;
    public float l;
    public float m;

    public final int hashCode() {
        int ordinal = ((this.f11654c.ordinal() + (((int) (tn.k(this.f11657f.hashCode() * 31, 31, this.j) + this.l)) * 31)) * 31) + this.f11656e;
        long floatToRawIntBits = Float.floatToRawIntBits(this.f11658g);
        return (((ordinal * 31) + ((int) (floatToRawIntBits ^ (floatToRawIntBits >>> 32)))) * 31) + this.f11652a;
    }
}
