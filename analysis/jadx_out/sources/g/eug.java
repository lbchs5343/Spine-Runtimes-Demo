package g;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.function.Function;

/* loaded from: classes.dex */
public final /* synthetic */ class eug implements Function {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16170a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f16171b;

    public /* synthetic */ eug(int i, Object obj) {
        this.f16170a = i;
        this.f16171b = obj;
    }

    public final /* synthetic */ Function andThen(Function function) {
        int i = this.f16170a;
        return j$.util.function.k.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f16170a) {
            case 0:
                String r = ((erm) this.f16171b).f16033d.r(((Integer) obj).intValue());
                zz zzVar = (zz) zz.f20423e.get(r);
                if (zzVar != null) {
                    return zzVar;
                }
                erm.f16030a.p(r, "Unknown java class attribute type: {}");
                return null;
            case 1:
                cqv cqvVar = (cqv) this.f16171b;
                File file = (File) obj;
                cqvVar.getClass();
                try {
                    FileInputStream fileInputStream = new FileInputStream(file);
                    try {
                        List i = cqvVar.i(file, fileInputStream, file.getAbsolutePath());
                        fileInputStream.close();
                        return i;
                    } finally {
                    }
                } catch (Exception e2) {
                    cqv.f13349b.b(file.getAbsolutePath(), "File open error: {}", e2);
                    return Collections.EMPTY_LIST;
                }
            case 2:
                return ((cqc) this.f16171b).y((cci) obj);
            case 3:
                bmg bmgVar = (bmg) this.f16171b;
                File file2 = (File) obj;
                try {
                    BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file2));
                    try {
                        List i2 = bmgVar.i(bufferedInputStream, file2.getName(), file2, null);
                        bufferedInputStream.close();
                        return i2;
                    } finally {
                    }
                } catch (Exception e3) {
                    bmg.f11821a.b(file2.getAbsolutePath(), "File open error: {}", e3);
                    return Collections.EMPTY_LIST;
                }
            case 4:
                Function function = (Function) this.f16171b;
                if (obj != null) {
                    throw new ClassCastException();
                }
                throw null;
            case 5:
                return (String) ((Map) this.f16171b).get((pj) obj);
            default:
                return (cwx) ((List) this.f16171b).get(((Integer) obj).intValue());
        }
    }

    public final /* synthetic */ Function compose(Function function) {
        int i = this.f16170a;
        return j$.util.function.k.$default$compose(this, function);
    }
}
