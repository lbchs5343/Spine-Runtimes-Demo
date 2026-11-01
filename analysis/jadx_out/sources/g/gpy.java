package g;

import j$.util.Collection;
import j$.util.Objects;
import j$.util.stream.Collectors;
import java.io.File;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final /* synthetic */ class gpy {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f18560a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f18561b;

    public /* synthetic */ gpy(int i, Object obj) {
        this.f18560a = i;
        this.f18561b = obj;
    }

    public final iu c(ArrayList arrayList) {
        Path resolve;
        Path resolve2;
        Path resolve3;
        File file;
        File file2;
        int i = this.f18560a;
        ftq ftqVar = ftq.f17398b;
        Object obj = this.f18561b;
        switch (i) {
            case 0:
                cqv cqvVar = ((bqb) obj).f11995d;
                cqvVar.getClass();
                List list = (List) Collection.b.stream(arrayList).map(new hel()).map(new eug(1, cqvVar)).filter(new bev(15)).flatMap(new gpn(5)).peek(new esk(13)).collect(Collectors.toList());
                return list.isEmpty() ? ftqVar : new cnv(list);
            default:
                gay gayVar = (gay) obj;
                eie eieVar = gayVar.f17833f.i;
                dpa dpaVar = gayVar.f17830c;
                Objects.requireNonNull((ao) gayVar.f17832e.f16224f);
                resolve = fvm.f17482a.resolve("tmp");
                dba dbaVar = bqu.f12045c;
                if (resolve != null) {
                    file2 = resolve.toFile();
                    bqu.f(file2);
                }
                resolve2 = resolve.resolve("plugins-data");
                resolve3 = resolve2.resolve((String) dpaVar.f14569g);
                if (resolve3 != null) {
                    file = resolve3.toFile();
                    bqu.f(file);
                }
                List list2 = (List) Collection.b.stream(arrayList).map(new hel()).map(new eug(3, new bmg(eieVar, resolve3))).filter(new brj(2)).flatMap(new gpn(5)).collect(Collectors.toList());
                return list2.isEmpty() ? ftqVar : new fgy(list2);
        }
    }
}
