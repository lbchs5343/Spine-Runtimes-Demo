package j$.util.stream;

import j$.util.Spliterator;

/* renamed from: j$.util.stream.m, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0349m extends AbstractC0342k2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21070b = 2;

    /* renamed from: c, reason: collision with root package name */
    public boolean f21071c;

    /* renamed from: d, reason: collision with root package name */
    public Object f21072d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0349m(J3 j3, InterfaceC0362o2 interfaceC0362o2) {
        super(interfaceC0362o2);
        this.f21072d = j3;
        this.f21071c = true;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0349m(C0302c2 c0302c2, InterfaceC0362o2 interfaceC0362o2) {
        super(interfaceC0362o2);
        this.f21072d = c0302c2;
    }

    public /* synthetic */ C0349m(InterfaceC0362o2 interfaceC0362o2) {
        super(interfaceC0362o2);
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void n(Object obj) {
        switch (this.f21070b) {
            case 0:
                InterfaceC0362o2 interfaceC0362o2 = this.f21057a;
                if (obj == null) {
                    if (this.f21071c) {
                        return;
                    }
                    this.f21071c = true;
                    this.f21072d = null;
                    interfaceC0362o2.n((InterfaceC0362o2) null);
                    return;
                }
                Object obj2 = this.f21072d;
                if (obj2 == null || !obj.equals(obj2)) {
                    this.f21072d = obj;
                    interfaceC0362o2.n((InterfaceC0362o2) obj);
                    return;
                }
                return;
            case 1:
                Stream stream = (Stream) ((C0302c2) this.f21072d).t.apply(obj);
                if (stream != null) {
                    try {
                        boolean z = this.f21071c;
                        InterfaceC0362o2 interfaceC0362o22 = this.f21057a;
                        if (z) {
                            Spliterator spliterator = ((Stream) stream.sequential()).spliterator();
                            while (!interfaceC0362o22.e() && spliterator.tryAdvance(interfaceC0362o22)) {
                            }
                        } else {
                            ((Stream) stream.sequential()).forEach(interfaceC0362o22);
                        }
                    } catch (Throwable th) {
                        try {
                            stream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (stream != null) {
                    stream.close();
                    return;
                }
                return;
            default:
                if (this.f21071c) {
                    boolean test = ((J3) this.f21072d).s.test(obj);
                    this.f21071c = test;
                    if (test) {
                        this.f21057a.n((InterfaceC0362o2) obj);
                        return;
                    }
                    return;
                }
                return;
        }
    }

    @Override // j$.util.stream.AbstractC0342k2, j$.util.stream.InterfaceC0362o2
    public final void c(long j) {
        switch (this.f21070b) {
            case 0:
                this.f21071c = false;
                this.f21072d = null;
                this.f21057a.c(-1L);
                break;
            case 1:
                this.f21057a.c(-1L);
                break;
            default:
                this.f21057a.c(-1L);
                break;
        }
    }

    @Override // j$.util.stream.AbstractC0342k2, j$.util.stream.InterfaceC0362o2
    public boolean e() {
        switch (this.f21070b) {
            case 1:
                this.f21071c = true;
                return this.f21057a.e();
            case 2:
                return !this.f21071c || this.f21057a.e();
            default:
                return super.e();
        }
    }

    @Override // j$.util.stream.AbstractC0342k2, j$.util.stream.InterfaceC0362o2
    public void end() {
        switch (this.f21070b) {
            case 0:
                this.f21071c = false;
                this.f21072d = null;
                this.f21057a.end();
                break;
            default:
                super.end();
                break;
        }
    }
}
