package g;

import j$.util.Collection;
import java.util.ArrayList;
import java.util.Stack;
import java.util.function.IntFunction;

/* loaded from: classes.dex */
public final class fgi extends cro {

    /* renamed from: a, reason: collision with root package name */
    public final cgy f16741a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f16742b;

    public fgi(cgy cgyVar, int i) {
        this.f16742b = i;
        this.f16741a = cgyVar;
    }

    public static void c(ArrayList arrayList, ArrayList arrayList2, Stack stack, int i) {
        if (stack.size() == i) {
            final int i2 = 0;
            arrayList.add((fza[]) Collection.b.toArray(stack, new IntFunction() { // from class: g.eae
                @Override // java.util.function.IntFunction
                public final Object apply(int i3) {
                    switch (i2) {
                        case 0:
                            return new fza[i3];
                        default:
                            return new fza[i3];
                    }
                }
            }));
        }
        final int i3 = 1;
        for (fza fzaVar : (fza[]) Collection.b.toArray(arrayList2, new IntFunction() { // from class: g.eae
            @Override // java.util.function.IntFunction
            public final Object apply(int i32) {
                switch (i3) {
                    case 0:
                        return new fza[i32];
                    default:
                        return new fza[i32];
                }
            }
        })) {
            stack.push(fzaVar);
            arrayList2.remove(fzaVar);
            c(arrayList, arrayList2, stack, i);
            arrayList2.add((fza) stack.pop());
        }
    }
}
