package com.bytedance.sdk.component.ox.dq;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public final class ig {
    static final Logger dq = Logger.getLogger(ig.class.getName());

    private ig() {
    }

    public static cd d(File file) throws FileNotFoundException {
        if (file != null) {
            return dq(new FileOutputStream(file));
        }
        throw new IllegalArgumentException("file == null");
    }

    public static gh d(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        }
        if (socket.getInputStream() == null) {
            throw new IOException("socket's input stream == null");
        }
        dq ox = ox(socket);
        return ox.dq(dq(socket.getInputStream(), ox));
    }

    public static cd dq() {
        return new cd() { // from class: com.bytedance.sdk.component.ox.dq.ig.3
            @Override // com.bytedance.sdk.component.ox.dq.cd
            public void a_(ox oxVar, long j) throws IOException {
                oxVar.ia(j);
            }

            @Override // com.bytedance.sdk.component.ox.dq.cd, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
            }

            @Override // com.bytedance.sdk.component.ox.dq.cd
            public r dq() {
                return r.ox;
            }

            @Override // com.bytedance.sdk.component.ox.dq.cd, java.io.Flushable
            public void flush() throws IOException {
            }
        };
    }

    public static cd dq(OutputStream outputStream) {
        return dq(outputStream, new r());
    }

    private static cd dq(final OutputStream outputStream, final r rVar) {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        if (rVar != null) {
            return new cd() { // from class: com.bytedance.sdk.component.ox.dq.ig.1
                @Override // com.bytedance.sdk.component.ox.dq.cd
                public void a_(ox oxVar, long j) throws IOException {
                    try {
                        i.dq(oxVar.f2161d, 0L, j);
                        long j2 = j;
                        while (j2 > 0) {
                            r.this.mn();
                            jy jyVar = oxVar.dq;
                            int min = (int) Math.min(j2, jyVar.ox - jyVar.f2157d);
                            outputStream.write(jyVar.dq, jyVar.f2157d, min);
                            int i = jyVar.f2157d + min;
                            jyVar.f2157d = i;
                            long j3 = min;
                            j2 -= j3;
                            oxVar.f2161d -= j3;
                            if (i == jyVar.ox) {
                                oxVar.dq = jyVar.d();
                                f.dq(jyVar);
                            }
                        }
                    } catch (IOException | Exception unused) {
                    }
                }

                @Override // com.bytedance.sdk.component.ox.dq.cd, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    outputStream.close();
                }

                @Override // com.bytedance.sdk.component.ox.dq.cd
                public r dq() {
                    return r.this;
                }

                @Override // com.bytedance.sdk.component.ox.dq.cd, java.io.Flushable
                public void flush() throws IOException {
                    outputStream.flush();
                }

                public String toString() {
                    return "sink(" + outputStream + ")";
                }
            };
        }
        throw new IllegalArgumentException("timeout == null");
    }

    public static cd dq(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        }
        if (socket.getOutputStream() == null) {
            throw new IOException("socket's output stream == null");
        }
        dq ox = ox(socket);
        return ox.dq(dq(socket.getOutputStream(), ox));
    }

    public static gh dq(File file) throws FileNotFoundException {
        if (file != null) {
            return dq(new FileInputStream(file));
        }
        throw new IllegalArgumentException("file == null");
    }

    public static gh dq(InputStream inputStream) {
        return dq(inputStream, new r());
    }

    private static gh dq(final InputStream inputStream, final r rVar) {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        }
        if (rVar != null) {
            return new gh() { // from class: com.bytedance.sdk.component.ox.dq.ig.2
                @Override // com.bytedance.sdk.component.ox.dq.gh, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    inputStream.close();
                }

                @Override // com.bytedance.sdk.component.ox.dq.gh
                public long dq(ox oxVar, long j) throws IOException {
                    if (j < 0) {
                        throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
                    }
                    if (j == 0) {
                        return 0L;
                    }
                    try {
                        r.this.mn();
                        jy s = oxVar.s(1);
                        int read = inputStream.read(s.dq, s.ox, (int) Math.min(j, 8192 - s.ox));
                        if (read == -1) {
                            return -1L;
                        }
                        s.ox += read;
                        long j2 = read;
                        oxVar.f2161d += j2;
                        return j2;
                    } catch (AssertionError e2) {
                        if (ig.dq(e2)) {
                            throw new IOException(e2);
                        }
                        throw e2;
                    } catch (Throwable th) {
                        throw new IOException(th.getMessage());
                    }
                }

                @Override // com.bytedance.sdk.component.ox.dq.gh
                public r dq() {
                    return r.this;
                }

                public String toString() {
                    return "source(" + inputStream + ")";
                }
            };
        }
        throw new IllegalArgumentException("timeout == null");
    }

    public static p dq(cd cdVar) {
        return new mp(cdVar);
    }

    public static s dq(gh ghVar) {
        return new q(ghVar);
    }

    public static boolean dq(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    public static cd ox(File file) throws FileNotFoundException {
        if (file != null) {
            return dq(new FileOutputStream(file, true));
        }
        throw new IllegalArgumentException("file == null");
    }

    private static dq ox(final Socket socket) {
        return new dq() { // from class: com.bytedance.sdk.component.ox.dq.ig.4
            @Override // com.bytedance.sdk.component.ox.dq.dq
            public void G_() {
                try {
                    socket.close();
                } catch (AssertionError e2) {
                    if (!ig.dq(e2)) {
                        throw e2;
                    }
                    ig.dq.log(Level.WARNING, "Failed to close timed out socket " + socket, (Throwable) e2);
                } catch (Exception e3) {
                    ig.dq.log(Level.WARNING, "Failed to close timed out socket " + socket, (Throwable) e3);
                }
            }

            @Override // com.bytedance.sdk.component.ox.dq.dq
            public IOException d(IOException iOException) {
                SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
                if (iOException != null) {
                    socketTimeoutException.initCause(iOException);
                }
                return socketTimeoutException;
            }
        };
    }
}
