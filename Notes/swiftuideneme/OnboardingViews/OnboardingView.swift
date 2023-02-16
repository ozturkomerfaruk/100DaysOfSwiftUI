//
//  OnboardingView.swift
//  swiftuideneme
//
//  Created by Ömer Faruk Öztürk on 16.02.2023.
//

import SwiftUI

struct OnboardingView: View {
    
    @State var onboardingState: Int = 3
    @State var nameTextField = ""
    @State var ageSlider: Double = 30
    @State var genderPicker: String = ""
    
    var body: some View {
        ZStack {
            ZStack {
                switch onboardingState {
                case 0:
                    welcomeSection
                case 1:
                    addNameSection
                case 2:
                    addAgeSection
                case 3:
                    addGenderSection
                default:
                    RoundedRectangle(cornerRadius: 30)
                        .foregroundColor(.green)
                }
            }
            
            
            VStack {
                Spacer()
                bottomButton
            }
            .padding(30)
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .background(Color.purple)
    }
}

extension OnboardingView {
    private var bottomButton: some View {
        Text("Sign In")
            .font(.headline)
            .foregroundColor(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(10)
            .padding()
    }
    
    private var welcomeSection: some View {
        VStack (spacing: 40) {
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            Text("Find your match")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundColor(.white), alignment: .bottom)
            Text("This is the onboarding app and this codes by Swiftful Thinking on youtube. Thanks dude <3")
                .fontWeight(.medium)
                .foregroundColor(.white)
            Spacer()
        }
        .padding(30)
    }
    
    private var addNameSection: some View {
        VStack (spacing: 20) {
            Spacer()
            Text("What's your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            TextField("Your name here...", text: $nameTextField)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(Color.white)
                .cornerRadius(30)
            
            Spacer()
        }
        .padding(30)
    }
    
    private var addAgeSection: some View {
        VStack (spacing: 20) {
            Spacer()
            Text("What's your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Slider(value: $ageSlider,
                   in: 10...80,
                   step: 1) { val in
                
            }
                   .accentColor(.white)
            Text(String(format: "%.f", ageSlider))
                .font(.largeTitle)
                .foregroundColor(.white)
                .fontWeight(.semibold)
            Spacer()
        }
        .padding(30)
    }
    
    private var addGenderSection: some View {
        VStack (spacing: 20) {
            Spacer()
            Picker(selection: $genderPicker,
                   label: Text("")
                ) {
                    Text("Male").tag("Male")
                    Text("Female").tag("Female")
            }
                .pickerStyle(MenuPickerStyle())
            
            Text(String(format: "%.f", ageSlider))
                .font(.largeTitle)
                .foregroundColor(.white)
                .fontWeight(.semibold)
            Spacer()
        }
        .padding(30)
    }
}
