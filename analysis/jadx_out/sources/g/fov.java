package g;

import j$.util.Collection;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.function.Function;

/* loaded from: classes.dex */
public final /* synthetic */ class fov implements Function {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17166a;

    public /* synthetic */ fov(int i) {
        this.f17166a = i;
    }

    public final /* synthetic */ Function andThen(Function function) {
        int i = this.f17166a;
        return j$.util.function.k.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        boolean z;
        switch (this.f17166a) {
            case 0:
                return ((vm) obj).l();
            case 1:
                return ((Boolean) obj).booleanValue() ? "yes" : "no";
            case 2:
                String str = (String) obj;
                String lowerCase = str.trim().toLowerCase(Locale.ROOT);
                if (lowerCase.equals("yes") || lowerCase.equals("true")) {
                    z = true;
                } else {
                    if (!lowerCase.equals("no") && !lowerCase.equals("false")) {
                        throw new IllegalArgumentException(tn.ad("Unknown value '", str, "' for option 'dex-input.verify-checksum', expect: 'yes' or 'no'"));
                    }
                    z = false;
                }
                return Boolean.valueOf(z);
            case 3:
                return Collection.b.stream(((fza) obj).f17684d);
            case 4:
                eek s = ffb.s(((aea) obj).i);
                Objects.requireNonNull(s);
                return s.ai;
            case 5:
                return Collection.b.stream(((aea) obj).f10080c);
            case 6:
                return new ArrayList();
            case 7:
                return ((aea) obj).i;
            case 8:
                return ((fza) obj).z;
            case 9:
                return ((ve) obj).m();
            case 10:
                return ((ve) obj).i();
            case 11:
                return cwx.bf((String) obj);
            case 12:
                return new ArrayList();
            case 13:
                return new bjo((vm) obj);
            case 14:
                return new bqm();
            case 15:
                return (Integer) obj;
            case 16:
                return 1;
            case 17:
                return Collections.singletonList((cno) obj);
            case 18:
                return (String) ((ghr) obj).f18176f;
            case 19:
                return ((fza) obj).f17685e;
            case 20:
                return ((ve) obj).f20150e;
            case 21:
                return new ArrayList();
            case 22:
                return ((ej) obj).f15621a;
            case 23:
                return ((ej) obj).f15621a;
            case 24:
                return 1;
            case 25:
                return ((hcd) ((Map.Entry) obj).getKey()).f19217g;
            case 26:
                return ((hed) obj).am;
            case 27:
                return ((fog) obj).getType();
            case 28:
                hed hedVar = (hed) obj;
                boolean z2 = false;
                try {
                    if (!new amh(hedVar).e()) {
                        hedVar.bu("Multi-variable type inference failed");
                    }
                    Iterator it = hedVar.at.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            z2 = true;
                        } else if (!((cwx) ((vm) it.next()).h.f16721f).h()) {
                        }
                    }
                } catch (Exception e2) {
                    hedVar.bu("Multi-variable type inference failed. Error: " + evh.c(e2));
                }
                return Boolean.valueOf(z2);
            default:
                return ((vm) obj).m();
        }
    }

    public final /* synthetic */ Function compose(Function function) {
        int i = this.f17166a;
        return j$.util.function.k.$default$compose(this, function);
    }
}
