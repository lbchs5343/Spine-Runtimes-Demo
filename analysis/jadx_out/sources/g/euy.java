package g;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import j$.util.Map;
import java.util.HashMap;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public final /* synthetic */ class euy implements Consumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f16206a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f16207b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f16208c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f16209d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f16210e;

    public /* synthetic */ euy(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.f16208c = i;
        this.f16209d = obj;
        this.f16210e = obj2;
        this.f16206a = obj3;
        this.f16207b = obj4;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        hcd ar;
        String str;
        int i = this.f16208c;
        Object obj2 = this.f16207b;
        Object obj3 = this.f16206a;
        Object obj4 = this.f16210e;
        Object obj5 = this.f16209d;
        switch (i) {
            case 0:
                cci cciVar = (cci) obj4;
                HashMap hashMap = (HashMap) obj3;
                ej ejVar = (ej) obj2;
                eek eekVar = (eek) obj;
                if (eekVar.ah == ((hay) obj5)) {
                    dsj dsjVar = (dsj) ((adz) eekVar).f10070a;
                    if (!dsjVar.f14711d.equals(cciVar.ak) || (ar = cciVar.ar(dsjVar)) == null) {
                        return;
                    }
                    ((List) Map.b.computeIfAbsent(hashMap, ejVar.f15621a, new fov(21))).add(ar);
                    return;
                }
                return;
            default:
                dwg dwgVar = (dwg) obj5;
                Predicate predicate = (Predicate) obj4;
                int[] iArr = (int[]) obj3;
                eie eieVar = (eie) obj2;
                cgt cgtVar = (cgt) obj;
                if (predicate != null) {
                    String type = cgtVar.getType();
                    if (type != null && type.length() > 2 && type.startsWith("L") && type.endsWith(";")) {
                        type = type.substring(1, type.length() - 1).replace('/', '.');
                    }
                    if (!predicate.test(type)) {
                        return;
                    }
                }
                try {
                    cci cciVar2 = new cci(dwgVar, cgtVar);
                    dwgVar.f14933e.add(cciVar2);
                    dwgVar.f14935g.put(cciVar2.ak, cciVar2);
                    dwgVar.n.put(cciVar2.bn(), cciVar2);
                } catch (Exception e2) {
                    dba dbaVar = dwg.f14929a;
                    try {
                        String type2 = cgtVar.getType();
                        try {
                            str = ve.g(dwgVar, type2).f20150e;
                        } catch (Exception e3) {
                            dbaVar.b(type2, "Failed to get name for class with type {}", e3);
                            str = null;
                        }
                        if (str == null || str.isEmpty()) {
                            str = "CLASS_" + type2;
                        }
                        int c2 = cgtVar.c();
                        dba dbaVar2 = cci.f12630c;
                        ve g2 = ve.g(dwgVar, str);
                        if (dwgVar.ae(g2) != null) {
                            throw new gck("Class already exist: ".concat(str));
                        }
                        dcj.d(cci.ao(dwgVar, g2, c2), "Load error", e2);
                    } catch (Exception unused) {
                        dbaVar.b(cgtVar.f(), "Failed to load class from file: {}", e2);
                    }
                }
                int i2 = iArr[0] + 1;
                iArr[0] = i2;
                if (i2 % 100 == 0) {
                    eieVar.u(((int) ((i2 * 29.0d) / (r0 + MediaPlayer.MEDIA_PLAYER_OPTION_CRASH_INFO))) + 30, 100L, "MSG:build_node:" + iArr[0]);
                }
                evh.n();
                return;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.f16208c;
        return j$.util.function.j.$default$andThen(this, consumer);
    }
}
