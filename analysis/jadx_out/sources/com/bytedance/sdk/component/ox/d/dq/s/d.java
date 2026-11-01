package com.bytedance.sdk.component.ox.d.dq.s;

/* loaded from: classes.dex */
public enum d {
    NO_ERROR(0),
    PROTOCOL_ERROR(1),
    INTERNAL_ERROR(2),
    FLOW_CONTROL_ERROR(3),
    REFUSED_STREAM(7),
    CANCEL(8);

    public final int mn;

    d(int i) {
        this.mn = i;
    }

    public static d dq(int i) {
        try {
            for (d dVar : values()) {
                if (dVar.mn == i) {
                    return dVar;
                }
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }
}
