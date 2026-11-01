package g;

import android.os.ParcelFileDescriptor;
import android.os.SystemClock;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.system.StructPollfd;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: g.for, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cfor extends InputStream {

    /* renamed from: a, reason: collision with root package name */
    public final long f17154a;

    /* renamed from: b, reason: collision with root package name */
    public final AtomicBoolean f17155b;

    /* renamed from: c, reason: collision with root package name */
    public final ParcelFileDescriptor.AutoCloseInputStream f17156c;

    /* renamed from: d, reason: collision with root package name */
    public final StructPollfd[] f17157d;

    public Cfor(ParcelFileDescriptor parcelFileDescriptor, long j, AtomicBoolean atomicBoolean) {
        this.f17156c = new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor);
        StructPollfd structPollfd = new StructPollfd();
        structPollfd.fd = parcelFileDescriptor.getFileDescriptor();
        structPollfd.events = (short) (OsConstants.POLLIN | OsConstants.POLLHUP | OsConstants.POLLERR);
        this.f17157d = new StructPollfd[]{structPollfd};
        this.f17154a = j;
        this.f17155b = atomicBoolean;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f17156c.close();
    }

    public final void e() {
        StructPollfd[] structPollfdArr = this.f17157d;
        while (true) {
            AtomicBoolean atomicBoolean = this.f17155b;
            if (atomicBoolean.get()) {
                throw new IOException("Layout read cancelled");
            }
            long uptimeMillis = this.f17154a - SystemClock.uptimeMillis();
            if (uptimeMillis <= 0) {
                throw new IOException("Layout read timed out");
            }
            try {
            } catch (ErrnoException e2) {
                if (e2.errno != OsConstants.EINTR) {
                    throw new IOException("Cannot read layout pipe", e2);
                }
            }
            if (Os.poll(structPollfdArr, (int) Math.min(uptimeMillis, 1000L)) > 0) {
                if (atomicBoolean.get()) {
                    throw new IOException("Layout read cancelled");
                }
                if ((structPollfdArr[0].revents & OsConstants.POLLNVAL) != 0) {
                    throw new IOException("Layout pipe is closed");
                }
                return;
            }
        }
    }

    @Override // java.io.InputStream
    public final int read() {
        e();
        return this.f17156c.read();
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        e();
        return this.f17156c.read(bArr, i, i2);
    }
}
