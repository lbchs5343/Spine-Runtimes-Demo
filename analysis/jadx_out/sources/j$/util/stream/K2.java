package j$.util.stream;

import j$.util.Collection;
import j$.util.List;
import j$.util.Objects;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class K2 extends C2 {

    /* renamed from: d, reason: collision with root package name */
    public ArrayList f20892d;

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void n(Object obj) {
        this.f20892d.add(obj);
    }

    @Override // j$.util.stream.AbstractC0342k2, j$.util.stream.InterfaceC0362o2
    public final void c(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f20892d = j >= 0 ? new ArrayList((int) j) : new ArrayList();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // j$.util.stream.AbstractC0342k2, j$.util.stream.InterfaceC0362o2
    public final void end() {
        List.b.sort(this.f20892d, this.f20837b);
        long size = this.f20892d.size();
        InterfaceC0362o2 interfaceC0362o2 = this.f21057a;
        interfaceC0362o2.c(size);
        int i = 0;
        if (this.f20838c) {
            ArrayList arrayList = this.f20892d;
            int size2 = arrayList.size();
            while (i < size2) {
                Object obj = arrayList.get(i);
                i++;
                if (interfaceC0362o2.e()) {
                    break;
                } else {
                    interfaceC0362o2.n((InterfaceC0362o2) obj);
                }
            }
        } else {
            ArrayList arrayList2 = this.f20892d;
            Objects.requireNonNull(interfaceC0362o2);
            j$.util.function.g gVar = new j$.util.function.g(interfaceC0362o2, 7);
            if (arrayList2 instanceof Collection) {
                ((Collection) arrayList2).forEach(gVar);
            } else {
                Objects.requireNonNull(gVar);
                int size3 = arrayList2.size();
                while (i < size3) {
                    Object obj2 = arrayList2.get(i);
                    i++;
                    gVar.n(obj2);
                }
            }
        }
        interfaceC0362o2.end();
        this.f20892d = null;
    }
}
