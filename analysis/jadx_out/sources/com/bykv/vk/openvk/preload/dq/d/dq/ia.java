package com.bykv.vk.openvk.preload.dq.d.dq;

import com.bykv.vk.openvk.preload.dq.i;
import com.bykv.vk.openvk.preload.dq.r;
import java.io.IOException;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class ia extends r<Object> {
    public static final i dq = new i() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.ia.1
        @Override // com.bykv.vk.openvk.preload.dq.i
        public final <T> r<T> dq(com.bykv.vk.openvk.preload.dq.iw iwVar, com.bykv.vk.openvk.preload.dq.ox.dq<T> dqVar) {
            if (dqVar.dq == Object.class) {
                return new ia(iwVar);
            }
            return null;
        }
    };

    /* renamed from: d, reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.dq.iw f588d;

    /* renamed from: com.bykv.vk.openvk.preload.dq.d.dq.ia$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] dq;

        static {
            int[] iArr = new int[com.bykv.vk.openvk.preload.dq.p.d.values().length];
            dq = iArr;
            try {
                iArr[com.bykv.vk.openvk.preload.dq.p.d.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                dq[com.bykv.vk.openvk.preload.dq.p.d.BEGIN_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                dq[com.bykv.vk.openvk.preload.dq.p.d.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                dq[com.bykv.vk.openvk.preload.dq.p.d.NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                dq[com.bykv.vk.openvk.preload.dq.p.d.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                dq[com.bykv.vk.openvk.preload.dq.p.d.NULL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public ia(com.bykv.vk.openvk.preload.dq.iw iwVar) {
        this.f588d = iwVar;
    }

    @Override // com.bykv.vk.openvk.preload.dq.r
    public final Object dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
        switch (AnonymousClass2.dq[dqVar.iw().ordinal()]) {
            case 1:
                ArrayList arrayList = new ArrayList();
                dqVar.dq();
                while (dqVar.s()) {
                    arrayList.add(dq(dqVar));
                }
                dqVar.d();
                return arrayList;
            case 2:
                com.bykv.vk.openvk.preload.dq.d.ia iaVar = new com.bykv.vk.openvk.preload.dq.d.ia();
                dqVar.ox();
                while (dqVar.s()) {
                    iaVar.put(dqVar.ia(), dq(dqVar));
                }
                dqVar.p();
                return iaVar;
            case 3:
                return dqVar.kk();
            case 4:
                return Double.valueOf(dqVar.ig());
            case 5:
                return Boolean.valueOf(dqVar.o());
            case 6:
                dqVar.no();
                return null;
            default:
                throw new IllegalStateException();
        }
    }

    @Override // com.bykv.vk.openvk.preload.dq.r
    public final void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, Object obj) throws IOException {
        if (obj == null) {
            oxVar.s();
            return;
        }
        r dq2 = this.f588d.dq((Class) obj.getClass());
        if (!(dq2 instanceof ia)) {
            dq2.dq(oxVar, obj);
        } else {
            oxVar.ox();
            oxVar.p();
        }
    }
}
