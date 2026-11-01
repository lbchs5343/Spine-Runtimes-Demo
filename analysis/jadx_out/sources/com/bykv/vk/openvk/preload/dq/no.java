package com.bykv.vk.openvk.preload.dq;

import java.io.IOException;
import java.io.StringWriter;

/* loaded from: classes.dex */
public abstract class no {
    public String d() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public Number dq() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public boolean iw() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public final f mn() {
        if (this instanceof f) {
            return (f) this;
        }
        throw new IllegalStateException("Not a JSON Primitive: ".concat(String.valueOf(this)));
    }

    public double ox() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public long p() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public int s() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public String toString() {
        try {
            StringWriter stringWriter = new StringWriter();
            com.bykv.vk.openvk.preload.dq.p.ox oxVar = new com.bykv.vk.openvk.preload.dq.p.ox(stringWriter);
            oxVar.ox = true;
            com.bykv.vk.openvk.preload.dq.d.no.dq(this, oxVar);
            return stringWriter.toString();
        } catch (IOException e2) {
            throw new AssertionError(e2);
        }
    }
}
