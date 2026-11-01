package g;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes3.dex */
public final class ebj extends LinearLayoutManager {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ebb f15237a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15238b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ebj(ebb ebbVar, int i, int i2) {
        super(i);
        this.f15237a = ebbVar;
        this.f15238b = i2;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.b
    public final void cm(RecyclerView recyclerView, int i) {
        god godVar = new god(recyclerView.getContext());
        godVar.h = i;
        ep(godVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void df(aqz aqzVar, int[] iArr) {
        int i = this.f15238b;
        ebb ebbVar = this.f15237a;
        if (i == 0) {
            iArr[0] = ebbVar.o.getWidth();
            iArr[1] = ebbVar.o.getWidth();
        } else {
            iArr[0] = ebbVar.o.getHeight();
            iArr[1] = ebbVar.o.getHeight();
        }
    }
}
