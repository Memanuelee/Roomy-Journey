//
//  BedroomView.swift
//  projectroom
//
//  Created by Emanuele Bazzicalupo on 04/03/25.
//

import SwiftUI

struct BedroomView: View {
    
    @Binding var screen: ContentView.Screen
    
    @State var dialogueNumber = 0
    @State var itemClicked = 0
    @State var counterClicked = 9
    
    @State private var isAnimatingText = false
    
    let dialogues = [
        "Well now I'm forced to actually go, by now I've promised ... haven't I?",
        "...What if I... make up some other excuse?",
        "Or I could use the usual “Steve” tactic, it's practically patented now.",
        "...Then again, what would it cost me? I could simply disappear for the umpteenth time and not show up.",
        "Who would really care?",
        "Hmm... However, others might be hurt. I might hurt them.",
        "Would my absence really hurt anyone? Funny, but from what they wrote it would seem so.",
        "But after all, what do I care? It is just a simple dinner, I would not miss anything...",
        "Yes, I will stay home this time too. Nothing can go wrong here.",
        "I have everything I need to be happy. Or at least, that's how I tell myself...",
        "my own space, my own passions, my own time... after all, every now and then even just that breeze coming from the window is enough to shake me for a moment.",
        "..",
        "....",
        "......",
        "But who am I kidding? Me, worrying about hurting them? They don't give a damn about me at all (although deep down I hope they do).",
        "They've never even seen me, so how can I blame them after all.",
        "The only person I would really let down would be me. Again.",
        "It's a simple outing, a simple dinner.",
        "...",
        "All right. So I decided to go there.",
        "...well. I'd better leave early, it's a far place and I want to make sure I get there in time...",
        "...I have no idea what to wear. Maybe I could try something new, like a nice jacket, a shirt...",
        "Too weird. Too different. Too 'not me.'",
        "No, definitely not.",
        "I think I'll go with my usual clothes. They make me feel safe.",
        "Why put so much effort into such stupidity? It's not like I should be rewarded for style.",
        "For effort? That one does.",
        "Just take a simple breath, jump in and everything will be fine.",
        "Let me first check if I got everything, just in case.",
        "Let me check around...",
        "Then it goes, apparently."
    ]
    
    let itemsThinking = [
        //0 = Start
        "Let me check around...",
        //1 = Calendar
        "I haven't updated it in a while now; in fact, I've almost lost track of the days.",
        //2 = Computer
        "I still have the chat open actually, I've given my word by now, and then thinking about it I really want to go there.",
        //3 = Windows
        "Maybe I'll take a peek outside: the city is always there, as usual. Nothing extraordinary...although it looks like a nice day, and then somewhere out there there are people waiting for me.",
        //4 = Poster
        "My favorite game: Dark Sauce! How many hours will I have spent on it? Way too many, although I never get tired of it.",
        //5 = Trash
        "I should empty it out. But then I think, “What happens if I don't?” And the answer is: absolutely nothing. Perfect, I can put it off.",
        //6 = Backpack
        "It seems a little short to bring it just for headphones, maybe I'll bring something to eat too....",
        //7 = Hatsune Miku
        "Hatsune Miku?!?!",
        //8 = Headphones
        "My old friends, should I bring them? It's still a nice subway ride, and my comfort music usually helps, I might even isolate myself if the situation gets awkward... Nha, it won't go like that! Right?",
        //9 = Bed
        "Still undone, definitely too long ago. I really should do it again. Or I can leave it like that, I'll be back in a few hours anyway. But then I come back, see it, and feel like sinking into it like always. Okay, do I do it again before it becomes a trap? I think about it some more..."
    ]
    
    @State var disappearItemClickable = [1, 1, 1, 1, 1, 1, 1, 1, 1]
    
    var body: some View {
        ZStack {
            Rectangle()
                .hidden()
            
            if dialogueNumber == 29 {
                ZStack {
                    
                    if disappearItemClickable[0] == 1 {
                        Button {
                            itemClicked = 1
                            counterClicked -= 1
                            disappearItemClickable[0] = 0
                        } label: {
                            Rectangle()
                                .fill(Color.white)
                                .scaledToFit()
                                .frame(width: 100)
                                .mask {
                                    Image(systemName: "questionmark.bubble")
                                }
                        }
                        .offset(x: -240, y: -70)
                        .opacity(!isAnimatingText || itemClicked == 1 ? 1 : 0.7)
                        .disabled(isAnimatingText)
                    }
                    
                    if disappearItemClickable[1] == 1 {
                        Button {
                            itemClicked = 2
                            counterClicked -= 1
                            disappearItemClickable[1] = 0
                        } label: {
                            Rectangle()
                                .fill(Color.black)
                                .scaledToFit()
                                .frame(width: 80)
                                .mask {
                                    Image(systemName: "questionmark.bubble")
                                }
                                .offset(x: 15, y: -10)
                        }
                        .offset(x: -200, y: 5)
                        .opacity(!isAnimatingText || itemClicked == 2 ? 1 : 0.7)
                        .disabled(isAnimatingText)
                    }
                    
                    if disappearItemClickable[2] == 1 {
                        Button {
                            itemClicked = 3
                            counterClicked -= 1
                            disappearItemClickable[2] = 0
                        } label: {
                            Rectangle()
                                .fill(Color.white)
                                .frame(width: 250, height: 230)
                                .mask {
                                    Image(systemName: "questionmark.bubble")
                                }
                                .offset(x: -5, y: -10)
                        }
                        .offset(x: 80, y: -45)
                        .opacity(!isAnimatingText || itemClicked == 3 ? 1 : 0.7)
                        .disabled(isAnimatingText)
                    }
                        
                    if disappearItemClickable[3] == 1 {
                        Button {
                            itemClicked = 4
                            counterClicked -= 1
                            disappearItemClickable[3] = 0
                        } label: {
                            Rectangle()
                                .fill(Color.white)
                                .frame(width: 70, height: 140)
                                .mask {
                                    Image(systemName: "questionmark.bubble")
                                }
                        }
                        .offset(x: 260, y: -75)
                        .opacity(!isAnimatingText || itemClicked == 4 ? 1 : 0.7)
                        .disabled(isAnimatingText)
                    }
                    
                    if disappearItemClickable[4] == 1 {
                        Button {
                            itemClicked = 5
                            counterClicked -= 1
                            disappearItemClickable[4] = 0
                        } label: {
                            Rectangle()
                                .fill(Color.white)
                                .scaledToFit()
                                .frame(width: 50)
                                .mask {
                                    Image(systemName: "questionmark.bubble")
                                }
                        }
                        .offset(x: -340, y: 145)
                        .opacity(!isAnimatingText || itemClicked == 5 ? 1 : 0.7)
                        .disabled(isAnimatingText)
                    }
                    
                    if disappearItemClickable[5] == 1 {
                        Button {
                            itemClicked = 6
                            counterClicked -= 1
                            disappearItemClickable[5] = 0
                        } label: {
                            Rectangle()
                                .fill(Color.white)
                                .scaledToFit()
                                .frame(width: 65)
                                .mask {
                                    Image(systemName: "questionmark.bubble")
                                }
                                .offset(x: 10, y: 5)
                        }
                        .offset(x: -270, y: 150)
                        .opacity(!isAnimatingText || itemClicked == 6 ? 1 : 0.7)
                        .disabled(isAnimatingText)
                    }
                    
                    if disappearItemClickable[6] == 1 {
                        Button {
                            itemClicked = 7
                            counterClicked -= 1
                            disappearItemClickable[6] = 0
                        } label: {
                            Rectangle()
                                .fill(Color.white)
                                .scaledToFit()
                                .frame(width: 65)
                                .mask {
                                    Image(systemName: "questionmark.bubble")
                                }
                        }
                        .offset(x: 250, y: 50)
                        .opacity(!isAnimatingText || itemClicked == 7 ? 1 : 0.7)
                        .disabled(isAnimatingText)
                    }
                    
                    if disappearItemClickable[7] == 1 {
                        Button {
                            itemClicked = 8
                            counterClicked -= 1
                            disappearItemClickable[7] = 0
                        } label: {
                            Rectangle()
                                .fill(Color.white)
                                .frame(width: 50, height: 60)
                                .mask {
                                    Image(systemName: "questionmark.bubble")
                                }
                        }
                        .offset(x: 280, y: 30)
                        .opacity(!isAnimatingText || itemClicked == 8 ? 1 : 0.7)
                        .disabled(isAnimatingText)
                    }
                    
                    if disappearItemClickable[8] == 1 {
                        Button {
                            itemClicked = 9
                            counterClicked -= 1
                            disappearItemClickable[8] = 0
                        } label: {
                            Rectangle()
                                .fill(Color.white)
                                .frame(width: 610, height: 70)
                                .mask {
                                    Image(systemName: "questionmark.bubble")
                                }
                                .offset(x: 100, y: -5)
                        }
                        .offset(x: 60, y: 175)
                        .opacity(!isAnimatingText || itemClicked == 9 ? 1 : 0.7)
                        .disabled(isAnimatingText)
                    }
                    
                    HStack {
                        TypewriterTextView(text: itemsThinking[itemClicked]) {
                            isAnimatingText = true
                        } onEndedAnimation: {
                            isAnimatingText = false
                        }
                        .font(.custom("Silkscreen-Regular", size: 16))
                        .foregroundColor(.white)
                        .padding(15)
                        .background(
                            Color.black
                                .opacity(0.4)
                        )
                        .cornerRadius(20)
                        .frame(maxHeight: 600, alignment: .bottom)
                    }
                    .padding()
                }
            } else {
                HStack {
                    TypewriterTextView(text: dialogues[dialogueNumber])                     .font(.custom("Silkscreen-Regular", size: 16))
                        .foregroundColor(.white)
                        .padding(15)
                        .background(
                            Color.black
                                .opacity(0.4)
                                .frame(maxHeight: 380)
                        )
                        .cornerRadius(20)
                        .frame(maxHeight: .infinity, alignment: .bottom)
                }
                .padding()
            }
        }
        .background(
            ZStack {
                Color.black.edgesIgnoringSafeArea(.all)
                
                Image("Bedroom")
                    .resizable()
                    .scaledToFit()
                    .aspectRatio(contentMode: .fill)
                    .onTapGesture {
                        if dialogueNumber == 30 {
                            screen = .ciao
                        } else if counterClicked == 0 {
                            dialogueNumber = 30
                        } else if isAnimatingText == false && dialogueNumber != 29 {
                            dialogueNumber += 1
                        }
                    }
            }
        )
    }
}

#Preview {
    BedroomView(screen: .constant(.bedroom))
}
