package com.bykv.vk.openvk.preload.geckox.p;

import com.bykv.vk.openvk.preload.dq.jy;
import com.bykv.vk.openvk.preload.dq.p.ox;
import com.bykv.vk.openvk.preload.dq.r;
import java.io.IOException;

/* loaded from: classes.dex */
public final class dq extends r<Boolean> {

    /* renamed from: com.bykv.vk.openvk.preload.geckox.p.dq$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] dq;

        static {
            int[] iArr = new int[com.bykv.vk.openvk.preload.dq.p.d.values().length];
            dq = iArr;
            try {
                iArr[com.bykv.vk.openvk.preload.dq.p.d.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                dq[com.bykv.vk.openvk.preload.dq.p.d.NULL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                dq[com.bykv.vk.openvk.preload.dq.p.d.NUMBER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @Override // com.bykv.vk.openvk.preload.dq.r
    public final /* synthetic */ Boolean dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
        com.bykv.vk.openvk.preload.dq.p.d iw = dqVar.iw();
        int i = AnonymousClass1.dq[iw.ordinal()];
        if (i == 1) {
            return Boolean.valueOf(dqVar.o());
        }
        if (i == 2) {
            dqVar.no();
            return null;
        }
        if (i == 3) {
            return Boolean.valueOf(dqVar.q() != 0);
        }
        throw new jy("Expected BOOLEAN or NUMBER but was ".concat(String.valueOf(iw)));
    }

    @Override // com.bykv.vk.openvk.preload.dq.r
    public final /* synthetic */ void dq(ox oxVar, Boolean bool) throws IOException {
        Boolean bool2 = bool;
        if (bool2 == null) {
            oxVar.s();
        } else {
            oxVar.dq(bool2);
        }
    }
}
