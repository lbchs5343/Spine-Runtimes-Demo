package g;

/* loaded from: classes.dex */
public final class aot {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10585a;

    /* renamed from: b, reason: collision with root package name */
    public int f10586b;

    /* renamed from: c, reason: collision with root package name */
    public int f10587c;

    public /* synthetic */ aot(int i, int i2, int i3) {
        this.f10585a = i3;
        this.f10586b = i;
        this.f10587c = i2;
    }

    public String toString() {
        switch (this.f10585a) {
            case 3:
                return "RawValue: type=0x" + Integer.toHexString(this.f10586b) + ", value=" + this.f10587c;
            default:
                return super.toString();
        }
    }
}
