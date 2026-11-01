package g;

import android.util.Log;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.logging.Handler;
import java.util.logging.Level;
import java.util.logging.LogRecord;

/* loaded from: classes3.dex */
public final class gmp extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public static final gmp f18408a = new gmp();

    @Override // java.util.logging.Handler
    public final void close() {
    }

    @Override // java.util.logging.Handler
    public final void flush() {
    }

    @Override // java.util.logging.Handler
    public final void publish(LogRecord logRecord) {
        int min;
        bff.p(logRecord, "record");
        CopyOnWriteArraySet copyOnWriteArraySet = cum.f13536a;
        String loggerName = logRecord.getLoggerName();
        bff.e(loggerName, "record.loggerName");
        int intValue = logRecord.getLevel().intValue();
        Level level = Level.INFO;
        int i = intValue > level.intValue() ? 5 : logRecord.getLevel().intValue() == level.intValue() ? 4 : 3;
        String message = logRecord.getMessage();
        bff.e(message, "record.message");
        Throwable thrown = logRecord.getThrown();
        String str = (String) cum.f13537b.get(loggerName);
        if (str == null) {
            str = dcv.bu(23, loggerName);
        }
        if (Log.isLoggable(str, i)) {
            if (thrown != null) {
                message = message + '\n' + Log.getStackTraceString(thrown);
            }
            int length = message.length();
            int i2 = 0;
            while (i2 < length) {
                int bh = dcv.bh(message, '\n', i2, 4);
                if (bh == -1) {
                    bh = length;
                }
                while (true) {
                    min = Math.min(bh, i2 + TTAdConstant.INIT_LOCAL_FAIL_CODE);
                    String substring = message.substring(i2, min);
                    bff.e(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                    Log.println(i, str, substring);
                    if (min >= bh) {
                        break;
                    } else {
                        i2 = min;
                    }
                }
                i2 = min + 1;
            }
        }
    }
}
