package g;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public final class fwm extends com.bytedance.sdk.component.o.p.ox {

    /* renamed from: a, reason: collision with root package name */
    public final InputStream f17522a;

    /* renamed from: b, reason: collision with root package name */
    public final CopyOnWriteArrayList f17523b;

    public fwm(InputStream inputStream, CopyOnWriteArrayList copyOnWriteArrayList) {
        super("LogcatDump$LogDumperThread");
        this.f17522a = inputStream;
        this.f17523b = copyOnWriteArrayList;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.f17522a));
        int i = 32768;
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    if (!readLine.startsWith("---------")) {
                        i -= readLine.getBytes("UTF-8").length;
                        if (i < 0) {
                            break;
                        } else {
                            this.f17523b.add(readLine);
                        }
                    }
                } else {
                    break;
                }
            } catch (IOException unused) {
                return;
            } finally {
                bfc.o(bufferedReader);
            }
        }
    }
}
