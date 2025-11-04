.class public Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;
.super Lcom/google/appinventor/components/runtime/SpeechRecognizerController;
.source "SourceFile"

# interfaces
.implements Landroid/speech/RecognitionListener;


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/content/Intent;

.field private KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/lang/String;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/speech/SpeechRecognizer;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 25
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/SpeechRecognizerController;-><init>()V

    .line 20
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/speech/SpeechRecognizer;

    .line 26
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 27
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/content/Intent;

    .line 28
    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public onBufferReceived([B)V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public onError(I)V
    .locals 5

    .prologue
    .line 1103
    move-object v0, p0

    move v1, p1

    const/4 v3, 0x0

    move v2, v3

    .line 1104
    move v3, v1

    packed-switch v3, :pswitch_data_0

    .line 1133
    :goto_0
    move v3, v2

    .line 71
    move v1, v3

    .line 72
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SpeechListener;

    move v4, v1

    invoke-interface {v3, v4}, Lcom/google/appinventor/components/runtime/SpeechListener;->onError(I)V

    .line 73
    return-void

    .line 1106
    :pswitch_0
    const/16 v3, 0xed9

    move v2, v3

    .line 1107
    goto :goto_0

    .line 1109
    :pswitch_1
    const/16 v3, 0xeda

    move v2, v3

    .line 1110
    goto :goto_0

    .line 1112
    :pswitch_2
    const/16 v3, 0xedb

    move v2, v3

    .line 1113
    goto :goto_0

    .line 1115
    :pswitch_3
    const/16 v3, 0xedc

    move v2, v3

    .line 1116
    goto :goto_0

    .line 1118
    :pswitch_4
    const/16 v3, 0xedd

    move v2, v3

    .line 1119
    goto :goto_0

    .line 1121
    :pswitch_5
    const/16 v3, 0xede

    move v2, v3

    .line 1122
    goto :goto_0

    .line 1124
    :pswitch_6
    const/16 v3, 0xedf

    move v2, v3

    .line 1125
    goto :goto_0

    .line 1127
    :pswitch_7
    const/16 v3, 0xee0

    move v2, v3

    .line 1128
    goto :goto_0

    .line 1130
    :pswitch_8
    const/16 v3, 0xee1

    move v2, v3

    goto :goto_0

    .line 1104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/lang/String;

    .line 94
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SpeechListener;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/SpeechListener;->onPartialResult(Ljava/lang/String;)V

    .line 95
    return-void

    .line 91
    :cond_0
    move-object v2, v1

    const-string/jumbo v3, "results_recognition"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    move-object v1, v2

    .line 92
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/lang/String;

    goto :goto_0
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 77
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/lang/String;

    .line 83
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SpeechListener;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/SpeechListener;->onResult(Ljava/lang/String;)V

    .line 84
    return-void

    .line 80
    :cond_0
    move-object v2, v1

    const-string/jumbo v3, "results_recognition"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    move-object v1, v2

    .line 81
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/lang/String;

    goto :goto_0
.end method

.method public onRmsChanged(F)V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, v0

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v2

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/speech/SpeechRecognizer;

    .line 33
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/speech/SpeechRecognizer;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 34
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/speech/SpeechRecognizer;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    .line 35
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/speech/SpeechRecognizer;

    if-eqz v1, :cond_0

    .line 40
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v1}, Landroid/speech/SpeechRecognizer;->stopListening()V

    .line 42
    :cond_0
    return-void
.end method
