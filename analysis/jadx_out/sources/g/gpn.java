package g;

import j$.util.Collection;
import java.io.File;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;

/* loaded from: classes.dex */
public final /* synthetic */ class gpn implements Function {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f18540a;

    public /* synthetic */ gpn(int i) {
        this.f18540a = i;
    }

    public final /* synthetic */ Function andThen(Function function) {
        int i = this.f18540a;
        return j$.util.function.k.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        Path path;
        int i;
        switch (this.f18540a) {
            case 0:
                gks gksVar = (gks) obj;
                return gksVar + " from " + gksVar.ae;
            case 1:
                return new flc((ur) obj);
            case 2:
                Map.Entry entry = (Map.Entry) obj;
                return entry.getKey() + ": \n -> " + evh.h("\n -> ", (Iterable) entry.getValue());
            case 3:
                return new HashSet();
            case 4:
                Map.Entry entry2 = (Map.Entry) obj;
                return Collection.b.stream((Set) entry2.getValue()).map(new edk(((afa) entry2.getKey()).name(), 1));
            case 5:
                return Collection.b.stream((List) obj);
            case 6:
                throw awf.j(obj);
            case 7:
                path = ((File) obj).toPath();
                return path;
            case 8:
                return ((File) obj).getAbsolutePath();
            case 9:
                return (String) ((gay) obj).f17830c.f14565c;
            case 10:
                return new ArrayList();
            case 11:
                Map.Entry entry3 = (Map.Entry) obj;
                gih gihVar = (gih) entry3.getKey();
                List list = (List) entry3.getValue();
                Iterator it = list.iterator();
                while (true) {
                    if (it.hasNext()) {
                        dyb dybVar = (dyb) it.next();
                        if (dybVar.f15073b == null) {
                            i = dybVar.f15072a;
                            list.remove(dybVar);
                        }
                    } else {
                        i = -1;
                    }
                }
                int size = list.size();
                int[] iArr = new int[size];
                String[] strArr = new String[size];
                for (int i2 = 0; i2 < size; i2++) {
                    dyb dybVar2 = (dyb) list.get(i2);
                    iArr[i2] = dybVar2.f15072a;
                    strArr[i2] = dybVar2.f15073b;
                }
                gihVar.f18198c = new avx(i, strArr, iArr);
                return gihVar;
            case 12:
                return ((ebp) obj).j().f11076d.m();
            case 13:
                return cwx.ba((String) obj);
            case 14:
                return Boolean.valueOf(((dho) obj).d());
            case 15:
                dho dhoVar = (dho) obj;
                return Boolean.valueOf(dhoVar.d() || dhoVar.e() || dhoVar == dho.WIDER_BY_GENERIC);
            case 16:
                ((fgh) obj).getClass();
                throw null;
            case 17:
                return (fgh) obj;
            case 18:
                return ((pj) obj).f();
            case 19:
                return ((fza) obj).f17684d;
            case 20:
                return new ArrayList();
            case 21:
                return ((amj) obj).a();
            case 22:
                return Collection.b.stream(((fza) obj).ac);
            case 23:
                return ((azy) obj).f11141c;
            case 24:
                return ((azy) obj).f11145g;
            case 25:
                return ((azy) obj).f11140b;
            case 26:
                return ((cci) obj).bn();
            case 27:
                return ((cci) obj).x;
            case 28:
                if (obj == null) {
                    return new ann();
                }
                throw new ClassCastException();
            default:
                if (obj == null) {
                    return new ekp();
                }
                throw new ClassCastException();
        }
    }

    public final /* synthetic */ Function compose(Function function) {
        int i = this.f18540a;
        return j$.util.function.k.$default$compose(this, function);
    }
}
