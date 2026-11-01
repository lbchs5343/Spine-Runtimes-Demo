package com.bytedance.sdk.openadsdk.mediation.dq.d;

import android.text.TextUtils;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot;
import g.hat;
import java.lang.reflect.Field;

/* loaded from: classes3.dex */
public class dq extends com.bytedance.sdk.openadsdk.f.d.ox.d {

    /* renamed from: d, reason: collision with root package name */
    private final ValueSet f3830d;

    public dq(ValueSet valueSet) {
        super(valueSet);
        this.f3830d = valueSet == null ? hat.f19147b : valueSet;
    }

    private static Bridge dq(ValueSet valueSet) {
        if (valueSet == null) {
            return null;
        }
        Bridge bridge = (Bridge) valueSet.objectValue(8260028, Bridge.class);
        if (bridge == null) {
            try {
                return (Bridge) valueSet.objectValue(260026, Bridge.class);
            } catch (Throwable unused) {
            }
        }
        return bridge;
    }

    public static ValueSet dq(ValueSet valueSet, String str) {
        hat e2 = hat.e(valueSet);
        e2.n(260022, str);
        return e2.k();
    }

    public static final ValueSet dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        return dq(dVar, (String) null);
    }

    public static final ValueSet dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, String str) {
        hat f2 = hat.f();
        if (dVar == null) {
            return f2.k();
        }
        f2.n(260001, dVar.p());
        f2.n(260002, dVar.s());
        f2.n(260003, dVar.iw());
        f2.n(260004, dVar.mn());
        f2.i(260005, dVar.ia());
        f2.o(260006, dVar.kk());
        f2.o(260007, dVar.o());
        f2.o(7, dVar.kk());
        f2.o(8, dVar.o());
        f2.l(260008, dVar.no());
        f2.l(260009, dVar.ig());
        f2.l(10, dVar.no());
        f2.l(9, dVar.ig());
        f2.i(260010, dVar.mp());
        f2.i(260011, dVar.q());
        f2.o(2600012, dVar.jy());
        f2.n(260013, dVar.f());
        f2.n(260014, dVar.fw());
        f2.o(260015, dVar.cd());
        f2.o(260016, dVar.gh());
        f2.m(260017, dVar.r());
        f2.o(260018, dVar.i());
        f2.n(260019, dVar.le());
        f2.o(260020, dVar.k());
        f2.n(260021, dVar.wp());
        f2.n(260022, dVar.e());
        f2.m(260023, dVar.kx());
        ValueSet valueSet = null;
        try {
            for (Field field : dVar.getClass().getDeclaredFields()) {
                field.setAccessible(true);
                if (field.get(dVar) instanceof ValueSet) {
                    valueSet = (ValueSet) field.get(dVar);
                }
                field.setAccessible(false);
            }
        } catch (Exception unused) {
        }
        if (valueSet != null) {
            f2.m(8260028, dq(valueSet));
            f2.m(260027, valueSet.objectValue(260027, IMediationAdSlot.class));
        }
        f2.n(260024, dVar.h());
        f2.o(260025, dVar.ji());
        f2.l(260008, dVar.no());
        if (!TextUtils.isEmpty(str)) {
            f2.n(8260029, str);
        }
        return f2.k();
    }

    public String d() {
        ValueSet valueSet = this.f3830d;
        if (valueSet == null) {
            return null;
        }
        return (String) valueSet.objectValue(8260029, String.class);
    }

    public d dq() {
        Bridge dq = dq(this.f3830d);
        if (dq != null) {
            return new d(dq);
        }
        return null;
    }

    public ValueSet ox() {
        return this.f3830d;
    }
}
