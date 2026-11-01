package com.bytedance.sdk.component.ox.d.dq.dq;

import com.bytedance.sdk.component.ox.dq.cd;
import com.bytedance.sdk.component.ox.dq.mn;
import java.io.IOException;

/* loaded from: classes.dex */
class s extends mn {
    private boolean dq;

    public s(cd cdVar) {
        super(cdVar);
    }

    @Override // com.bytedance.sdk.component.ox.dq.mn, com.bytedance.sdk.component.ox.dq.cd
    public void a_(com.bytedance.sdk.component.ox.dq.ox oxVar, long j) throws IOException {
        if (this.dq) {
            oxVar.ia(j);
            return;
        }
        try {
            super.a_(oxVar, j);
        } catch (IOException e2) {
            this.dq = true;
            dq(e2);
        }
    }

    @Override // com.bytedance.sdk.component.ox.dq.mn, com.bytedance.sdk.component.ox.dq.cd, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.dq) {
            return;
        }
        try {
            super.close();
        } catch (IOException e2) {
            this.dq = true;
            dq(e2);
        }
    }

    public void dq(IOException iOException) {
    }

    @Override // com.bytedance.sdk.component.ox.dq.mn, com.bytedance.sdk.component.ox.dq.cd, java.io.Flushable
    public void flush() throws IOException {
        if (this.dq) {
            return;
        }
        try {
            super.flush();
        } catch (IOException e2) {
            this.dq = true;
            dq(e2);
        }
    }
}
