import pandas as pd

# Load dataset
df = pd.read_csv("data/ai_response_evaluation.csv")

print("AI Response Evaluation Data:\n")
print(df)

# Basic analysis
avg_accuracy = df["Accuracy_Score"].mean()
avg_clarity = df["Clarity_Score"].mean()

print("\n--- Analysis Results ---")
print(f"Average Accuracy Score: {avg_accuracy}")
print(f"Average Clarity Score: {avg_clarity}")

# Identify weak responses
weak_responses = df[df["Accuracy_Score"] < 4]

print("\nResponses that need improvement:")
print(weak_responses)
